import sys
from parsers.arg_parser import arg_parser
from parsers.trace_parser import parse_traces_from_file
from simulators.base_simulator import BranchSimulator, Prediction
from simulators.smith_predictor import SmithBranchSimulator
from simulators.stats_wrapper import StatTrackSimulator
from simulators.bimodal_predictor import BimodalBranchSimulator


def cli_driver():
    config = arg_parser(sys.argv)

    # instantiate and configure the simulator
    simulator = None
    if config["mode"] == "smith":
        simulator = SmithBranchSimulator(config["b"])
    elif config["mode"] == "bimodal":
        simulator = BimodalBranchSimulator(config["m2"])
    elif config["mode"] == "gshare":
        pass
    elif config["mode"] == "hybrid":
        pass
    else:
        print("Fatal error. Please try again.")
        sys.exit()

    # prepare for execution
    branch_seq = parse_traces_from_file(config["trace_file"])
    stat_track_middleware = StatTrackSimulator(simulator)

    # perform simulation
    simulator = simulate(stat_track_middleware, branch_seq)

    # special printing to match validation files
    pretty_args = sys.argv[1:-1]
    pretty_args.append(config["trace_file"].split("/")[-1])
    print(f"COMMAND\n./sim {' '.join(pretty_args)}\nOUTPUT")

    simulator.print_stats()


def simulate(
    sim: "BranchSimulator", branch_sequence: [(str, "Prediction")]
) -> "BranchSimulator":
    """
    simulate takes a BranchSimulator simulation object and a set of branch commands
    in the form of tuples of the PC and whether a branch is actually taken in the form
    of a 'Prediction' enum. This method then returns a reference to the simulator that
    performed all of the predictions.
    """
    for pair in branch_sequence:
        (addr, factual_result) = pair
        predicted_result = sim.predict(addr)
        sim.update(addr, predicted_result, factual_result)
    return sim


if __name__ == "__main__":
    cli_driver()
