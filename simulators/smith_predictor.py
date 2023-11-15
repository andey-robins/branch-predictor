from simulators.base_simulator import BranchSimulator, Prediction


class SmithBranchSimulator(BranchSimulator):
    b = 0
    counter = 0
    cutoff = 0

    def __init__(self, b):
        """
        The SmithBranchSimulator needs a single parameter, b, the number of bits to
        use in the branch prediction counter.
        """
        assert b <= 4 and b >= 1
        self.b = b
        # this initialize value is specified in the problem spec
        self.counter = 2 ** (b - 1)
        self.upper_bound = 2**b - 1
        self.lower_bound = 0
        self.cutoff = self.counter

    def predict(self, address: str) -> "Prediction":
        if self.counter < self.cutoff:
            return Prediction.NOTTAKEN
        else:
            return Prediction.TAKEN

    def update(self, address: str, choice: "Prediction", actual: "Prediction") -> None:
        # update counter
        if actual == Prediction.TAKEN and self.counter < self.upper_bound:
            self.counter += 1
        elif actual == Prediction.NOTTAKEN and self.counter > self.lower_bound:
            self.counter -= 1

    def print_stats(self) -> None:
        print(f"FINAL COUNTER CONTENT:      {self.counter}")
