from simulators.base_simulator import Prediction


def parse_traces_from_file(fname: str) -> [(str, "Prediction")]:
    """
    parse_traces_from_file is a wrapper around parse_traces_from_string. it returns
    a list of branch results.
    """
    with open(fname, "r") as f:
        return parse_traces_from_string("\n".join(f.readlines()))


def parse_traces_from_string(body: str) -> [(str, "Prediction")]:
    """
    given a string encoding of branch results, parse_traces_from_string will break
    up these values and return a sequence of branch results
    """
    lines = body.split("\n")
    branches = []
    for line in lines:
        if line != "":
            (addr, taken) = line.split(" ")
            if taken == "t":
                branches.append((addr, Prediction.TAKEN))
            elif taken == "n":
                branches.append((addr, Prediction.NOTTAKEN))

    return branches
