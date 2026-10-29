import 'package:plate_core/plate_core.dart';

// TODO(py): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(ts): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(kt): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
/// Judges a Beninese plate: two letters (the series) and four digits, `AB 1234`.
/// Reports, never bars a keystroke.
class BeninValidator extends GatedPlateValidator {
  const BeninValidator();

  // TODO(py): [H9] Python re: \d/\w match Unicode; keep explicit [0-9]/[A-Z] classes (or re.ASCII).
  // TODO(ts): [H9] same flavour as Dart; port as is, cover accept/reject in the vectors (D9).
  // TODO(kt): [H9] Regex engine differs per target (JVM/JS/Native): keep to portable syntax.
  static final RegExp _series = RegExp(r'^[A-Z]{2}$');

  @override
  String get gateGroup => 'number';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (!_series.hasMatch(entry.group('series'))) {
      return PlateValidation.invalid('The series is 2 letters.');
    }
    if (!isDigitsOfLength(entry.group('number'), 4)) {
      return PlateValidation.invalid('The number is 4 digits.');
    }
    return const PlateValidation.valid();
  }
}
