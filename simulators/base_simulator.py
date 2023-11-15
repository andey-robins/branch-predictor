from abc import ABC, abstractmethod
from enum import Enum


class Prediction(Enum):
    TAKEN = 1
    NOTTAKEN = 2


class BranchSimulator(ABC):
    @abstractmethod
    def predict(self, address: str) -> "Prediction":
        """
        predict takes a program counter address and returns a prediction for the branch.
        This method may *not* update/modify any state of the simulator.
        """
        pass

    @abstractmethod
    def update(self, address: str, choice: "Prediction", actual: "Prediction") -> None:
        """
        update will modify the state of the predictor using the address, the prediction
        and the fact of whatever the actual result of the branch was. This may update
        state information, so different side-effects may occur based on the sequencing
        of updates. As a result, predict may be called as many times as wanted but update
        should only be invoked once for each command
        """
        pass

    @abstractmethod
    def print_stats(self) -> None:
        """
        print_stats will output some stat information to the STDOUT based on what the
        predictor has done to conform with output requirements for the assignment.
        """
        pass
