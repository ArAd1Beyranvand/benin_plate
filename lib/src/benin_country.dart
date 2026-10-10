import 'package:plate_core/plate_core.dart';

import 'benin_colors.dart';

/// Benin as a `PlateCountry`. The plates carry no country block (the "RB" is
/// a label on the face), so every spec sets `noPanel`.
abstract final class BeninCountry {
  static const PlateCountry benin = PlateCountry(
    code: 'bj',
    captionLines: <String>[],
    panelColor: BeninColors.white,
    panelTextColor: BeninColors.black,
  );
}
