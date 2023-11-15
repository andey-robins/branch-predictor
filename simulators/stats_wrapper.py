from simulators.base_simulator import BranchSimulator, Prediction


class StatTrackSimulator(BranchSimulator):
    simulator = None

    correct_preds = 0
    wrong_preds = 0

    def __init__(self, sim: "BranchSimulator"):
        self.simulator = sim

    def predict(self, address: str) -> "Prediction":
        if self.simulator == None:
            raise AttributeError("No simulator available for stat tracker")

        return self.simulator.predict(address)

    def update(self, address: str, choice: "Prediction", actual: "Prediction") -> None:
        if self.simulator == None:
            raise AttributeError("No simulator available for stat tracker")

        if choice == actual:
            self.correct_preds += 1
        else:
            self.wrong_preds += 1

        return self.simulator.update(address, choice, actual)

    def print_stats(self) -> None:
        print(f"number of predictions:      {self.correct_preds + self.wrong_preds}")
        print(f"number of mispredictions:   {self.wrong_preds}")
        print(
            f"misprediction rate:     {self.wrong_preds / (self.correct_preds + self.wrong_preds) * 100:.2f}%"
        )
        self.simulator.print_stats()
