from simulators.base_simulator import BranchSimulator, Prediction
from simulators.bimodal_predictor import BimodalBranchSimulator
from simulators.gshare_predictor import GshareBranchSimulator


class HybridBranchSimulator(BranchSimulator):
    k, n, m1, m2 = 0, 0, 0, 0

    chooser_table = {}

    bimodal_simulator = None
    gshare_simulator = None

    def __init__(
        self,
        k: int,
        n: int,
        m1: int,
        m2: int,
    ):
        self.k = k
        self.n = n
        self.m1 = m1
        self.m2 = m2

        for i in range(2**k):
            self.chooser_table[i] = 1

        self.bimodal_simulator = BimodalBranchSimulator(m2)
        self.gshare_simulator = GshareBranchSimulator(n, m1)

        # these are the indices where we slice addresses for
        # getting indexes from the addr_to_idx method. they're
        # parameterized for this class because there are potentially
        # multiple options
        # val + 1 (prob speec), + 1 (for inclusive upper bound)
        self.gshare_addr_slice_bounds = (2, m1 + 2)
        self.bimodal_addr_slice_bounds = (2, m2 + 2)
        self.chooser_addr_slice_bounds = (2, k + 2)

    def predict(self, address: str) -> "Prediction":
        bimodal_pred, gshare_pred = self.get_both_predictions(address)
        branch_idx = self.addr_to_idx(address, self.chooser_addr_slice_bounds)

        if self.chooser_table[branch_idx] >= 2:
            return gshare_pred
        else:
            return bimodal_pred

    def update(self, address: str, choice: "Prediction", actual: "Prediction") -> None:
        choice_idx = self.addr_to_idx(address, self.chooser_addr_slice_bounds)
        gshare_pred_used = self.chooser_table[choice_idx] >= 2

        # update branch chooser counters
        bimodal_pred, gshare_pred = self.get_both_predictions(address)

        if bimodal_pred != gshare_pred:
            if gshare_pred == actual and self.chooser_table[choice_idx] < 3:
                self.chooser_table[choice_idx] += 1
            elif bimodal_pred == actual and self.chooser_table[choice_idx] > 0:
                self.chooser_table[choice_idx] -= 1

        # update sub-predictors
        if gshare_pred_used:
            self.gshare_simulator.update(address, gshare_pred, actual)
        else:
            self.bimodal_simulator.update(address, bimodal_pred, actual)
            # update gshare_hist regardless of choice
            self.gshare_simulator.update_global_history(actual)

    def print_stats(self) -> None:
        # counter
        print("FINAL CHOOSER CONTENTS")
        for key, val in self.chooser_table.items():
            print(f"{key}\t{val}")
        self.gshare_simulator.print_stats()
        self.bimodal_simulator.print_stats()

    def addr_to_idx(
        self,
        address: str,
        slice_bounds: (int, int),
    ) -> str:
        addr_str = bin(int(address, 16))[2:].zfill(len(address) * 4)
        # reversing is necessary to index in the same significance as
        # the validation runs use, necessary for correct stat print ordering
        bin_str = addr_str[::-1]
        bin_idx_str = bin_str[slice_bounds[0] : slice_bounds[1]]
        idx = int(bin_idx_str[::-1], 2)
        return idx

    def get_both_predictions(self, address: str) -> ("Prediction", "Prediction"):
        """
        get_both_predictions will return the pair of predictions
        with (bimodal, gshare) as the ordering.
        """
        return (
            self.bimodal_simulator.predict(address),
            self.gshare_simulator.predict(address),
        )
