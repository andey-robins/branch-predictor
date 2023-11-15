import sys
from parsers.arg_parser import arg_parser
from simulators.base_simulator import BranchSimulator
from simulators.smith_predictor import SmithBranchSimulator


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

    simulate(simulator)


def simulate(sim: "BranchSimulator"):
    pass


if __name__ == "__main__":
    cli_driver()
