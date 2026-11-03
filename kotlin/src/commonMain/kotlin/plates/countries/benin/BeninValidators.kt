package plates.countries.benin

import plates.core.validators.PlateCheck
import plates.core.validators.RuledPlateValidator

/** Judges a Beninese plate: two letters (the series) and four digits, `AB 1234`. Reports, never bars a keystroke. */
class BeninValidator : RuledPlateValidator() {
    override val checks = listOf(
        PlateCheck("series", "[A-Z]{2}", "The series is 2 letters."),
        PlateCheck("number", "[0-9]{4}", "The number is 4 digits."),
    )
}
