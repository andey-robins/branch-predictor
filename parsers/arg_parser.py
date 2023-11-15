import sys


def try_convert(value, default, *types):
    """
    https://stackoverflow.com/questions/12451531/python-try-catch-block-inside-lambda

    type conversion attempt, returns default if unable to convert
    """
    for t in types:
        try:
            return t(value)
        except (ValueError, TypeError):
            continue
    return default


def arg_parser(args) -> dict:
    """
    validate arguments are provided through the CLI and have
    the right form for each verb.

    VERBS: smith, bimodal, gshare, hybrid

    smith args:   <b> <trace_file>
    bimodal args: <m2> <trace_file>
    gshare args:  <m1> <n> <trace_file>
    hybrid args:  <k> <m1> <n> <m2> <trace_file>

    <b>  - counter bits
    <m2> - # PC bits for table indexing
    <m1> - # PC bits
    <n>  - global branch history bits
    <k>  - bits for chooser index table
    <trace_file> - relative path to trace file
    """
    parsed_args = {}

    def positive_integer(i_str):
        return try_convert(i_str, 0, int)

    verb = args[1]
    if not verb in ["smith", "bimodal", "gshare", "hybrid"]:
        print("Invalid mode provided to CLI.")
        print(f"got={verb} expected=one of smith, bimodal, gshare, or hybrid")
        sys.exit()
    parsed_args["mode"] = verb

    if verb == "smith":
        parsed_args["b"] = positive_integer(args[2])
        parsed_args["trace_file"] = args[3]
    elif verb == "bimodal":
        parsed_args["m2"] = positive_integer(args[2])
        parsed_args["trace_file"] = args[3]
    elif verb == "gshare":
        parsed_args["m1"] = positive_integer(args[2])
        parsed_args["n"] = positive_integer(args[3])
        parsed_args["trace_file"] = args[4]
    elif verb == "hybrid":
        parsed_args["k"] = positive_integer(args[2])
        parsed_args["m1"] = positive_integer(args[3])
        parsed_args["n"] = positive_integer(args[4])
        parsed_args["m2"] = positive_integer(args[5])
        parsed_args["trace_file"] = args[6]
    else:
        print("Fatal error. Please try again.")
        sys.exit()

    return parsed_args
