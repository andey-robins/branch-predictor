import sys
from parsers.arg_parser import arg_parser
from parsers.trace_parser import parse_traces_from_file
from simulators.base_simulator import BranchSimulator, Prediction
from simulators.smith_predictor import SmithBranchSimulator
from simulators.stats_wrapper import StatTrackSimulator


def cli_driver():
    config = arg_parser(sys.argv)

    simulator = None

    if config["mode"] == "smith":
        simulator = SmithBranchSimulator(config["b"])
    elif config["mode"] == "bimodal":
        pass
    elif config["mode"] == "gshare":
        pass
    elif config["mode"] == "hybrid":
        pass
    else:
        print("Fatal error. Please try again.")
        sys.exit()

    branch_seq = parse_traces_from_file(config["trace_file"])

    stat_track_middleware = StatTrackSimulator(simulator)

    simulator = simulate(stat_track_middleware, branch_seq)

    simulator.print_stats()


def simulate(sim: "BranchSimulator", branch_sequence: [(str, "Prediction")]):
    for pair in branch_sequence:
        (addr, factual_result) = pair
        predicted_result = sim.predict(addr)
        sim.update(addr, predicted_result, factual_result)

    return sim


if __name__ == "__main__":
    cli_driver()
