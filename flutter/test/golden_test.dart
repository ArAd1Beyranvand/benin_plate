import 'package:benin_plate/benin_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens('bj', BeninCountry.benin, <String, PlateGoldenCase>{
    'private': (BeninPlates.standard, BeninThemes.private, 'AE 8888'),
    'commercial': (BeninPlates.standard, BeninThemes.commercial, 'AA 8853'),
  }, decodeDelay: const Duration(milliseconds: 300));
}
