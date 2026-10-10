import 'package:plate_core/plate_core.dart';

/// Judges a Beninese plate: two letters (the series) and four digits, `AB 1234`.
/// Reports, never bars a keystroke.
class BeninValidator extends GatedPlateValidator {
  const BeninValidator();

  @override
  String get gateGroup => 'number';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (!RegExp(r'^[A-Z]{2}$').hasMatch(entry.group('series'))) {
      return PlateValidation.invalid('The series is 2 letters.');
    }
    if (!isDigitsOfLength(entry.group('number'), 4)) {
      return PlateValidation.invalid('The number is 4 digits.');
    }
    return const PlateValidation.valid();
  }
}
