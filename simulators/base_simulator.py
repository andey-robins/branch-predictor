from abc import ABC, abstractmethod
from enum import Enum


class Prediction(Enum):
    TAKEN = 1
    NOTTAKEN = 2


class BranchSimulator(ABC):
    @abstractmethod
    def predict(self, address: str) -> "Prediction":
        pass

    @abstractmethod
    def update(self, address: str, res: "Prediction") -> None:
        pass
