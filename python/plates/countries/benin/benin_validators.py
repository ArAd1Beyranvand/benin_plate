"""Port of benin_plate/lib/src/benin_validators.dart."""
from __future__ import annotations

import re
from dataclasses import dataclass

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length


@dataclass(frozen=True)
class BeninValidator(GatedPlateValidator):
    gate_group = "number"
    _series = re.compile(r"^[A-Z]{2}$")

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not self._series.fullmatch(entry.group("series")):
            return PlateValidation.invalid("The series is 2 letters.")
        if not is_digits_of_length(entry.group("number"), 4):
            return PlateValidation.invalid("The number is 4 digits.")
        return PlateValidation.valid()
