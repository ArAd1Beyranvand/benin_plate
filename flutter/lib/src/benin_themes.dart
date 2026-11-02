import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'benin_colors.dart';

/// Black ink and a black frame on one field.
///
/// The frame measures ~4.5 of 110 units (0.04) with corners of ~10 (0.09).
abstract final class BeninThemes {
  /// Private plate: black on white.
  static final PlateTheme private = _ink(BeninColors.white);

  /// Commercial plate: black on orange.
  static final PlateTheme commercial = _ink(BeninColors.orange);
}

PlateTheme _ink(Color field) => PlateTheme.monochrome(
  field: field,
  ink: BeninColors.black,
  inactive: BeninColors.inactive,
  borderWidthRatio: 0.04,
  plateRadiusRatio: 0.09,
);
