from simulators.base_simulator import BranchSimulator, Prediction


class SmithBranchSimulator(BranchSimulator):
    b = 0

    def __init__(self, b):
        self.b = b

    def predict(self, address: str) -> "Prediction":
        pass

    def update(self, address: str, res: "Prediction") -> None:
        pass
