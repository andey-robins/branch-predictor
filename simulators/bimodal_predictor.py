from simulators.base_simulator import BranchSimulator, Prediction


class BimodalBranchSimulator(BranchSimulator):
    prediction_table = {}

    m = 0

    def __init__(self, m):
        self.prediction_table = {}

        self.m = m

        # m + 1, plus 1 for slicing to be inclusive of last element
        self.addr_slice_upper = m + 2
        self.addr_slice_lower = 2

    def predict(self, address: str) -> "Prediction":
        idx = self.addr_to_idx(address)

        if not idx in self.prediction_table:
            self.prediction_table[idx] = 4

        if self.prediction_table[idx] < 4:
            return Prediction.NOTTAKEN
        else:
            return Prediction.TAKEN

    def update(self, address: str, choice: "Prediction", actual: "Prediction") -> None:
        idx = self.addr_to_idx(address)

        # we don't need to check for idx in the prediction table
        # because we will never try to update state on an index
        # that we haven't already performed a prediction for, not
        # sure to contractually enforce that in python, so you get this comment :)

        prediction_counter = self.prediction_table[idx]

        if actual == Prediction.TAKEN and prediction_counter < 7:
            prediction_counter += 1
        elif actual == Prediction.NOTTAKEN and prediction_counter > 0:
            prediction_counter -= 1

        self.prediction_table[idx] = prediction_counter

    def print_stats(self) -> None:
        print("FINAL BIMODAL CONTENTS")
        for i in range(2**self.m):
            if i in self.prediction_table:
                print(f"{i}\t{self.prediction_table[i]}")
            else:
                print(f"{i}\t4")

    def addr_to_idx(self, address: str) -> str:
        addr_str = bin(int(address, 16))[2:].zfill(len(address) * 4)
        # reversing is necessary to index in the same significance as
        # the validation runs use, necessary for correct stat print ordering
        bin_str = addr_str[::-1]
        bin_idx_str = bin_str[self.addr_slice_lower : self.addr_slice_upper]
        idx = int(bin_idx_str[::-1], 2)
        return idx
