from simulators.base_simulator import BranchSimulator, Prediction


class GshareBranchSimulator(BranchSimulator):
    prediction_table = {}
    g_hist = []

    n, m = 0, 0

    def __init__(self, n: int, m: int):
        self.prediction_table = {}
        self.g_hist = ["0"] * n

        self.n = n
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
        prediction_counter = self.prediction_table[idx]

        if actual == Prediction.TAKEN and prediction_counter < 7:
            prediction_counter += 1
        elif actual == Prediction.NOTTAKEN and prediction_counter > 0:
            prediction_counter -= 1

        self.prediction_table[idx] = prediction_counter

        self.g_hist.insert(0, "1" if actual == Prediction.TAKEN else "0")
        self.g_hist.pop()
        assert len(self.g_hist) == self.n

    def print_stats(self) -> None:
        print("FINAL GSHARE CONTENTS")
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
        history = int("".join(self.g_hist), 2)
        return idx ^ history
