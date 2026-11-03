import 'package:plate_core/plate_core.dart';

/// Judges a Beninese plate: two letters (the series) and four digits, `AB 1234`.
/// Reports, never bars a keystroke.
class BeninValidator extends RuledPlateValidator {
  const BeninValidator();

  @override
  List<PlateCheck> get checks => const <PlateCheck>[
    PlateCheck('series', r'[A-Z]{2}', 'The series is 2 letters.'),
    PlateCheck('number', r'[0-9]{4}', 'The number is 4 digits.'),
  ];
}
