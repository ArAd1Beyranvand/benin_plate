import 'package:flutter/widgets.dart';

/// The colours of the Beninese plates, sampled from the flattened reference
/// plates (`____1`, `____2`).
abstract final class BeninColors {
  /// Private field: `FEFEFE`.
  static const Color white = Color(0xFFFEFEFE);

  /// Commercial field: `FD6800`.
  static const Color orange = Color(0xFFFD6800);

  /// Ink and frame on both plates: `000000`.
  static const Color black = Color(0xFF000000);

  static const Color inactive = Color(0xFFB0B0B0);
}
