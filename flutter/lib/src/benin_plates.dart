import 'package:flutter/widgets.dart';
import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'benin_country.dart';

/// Where the ink sits, in plate units.
///
/// The article gives no size; the references are photographs flattened to
/// 520×110 (the European size; their 4.65 aspect agrees). Centres are of the
/// ink runs measured on `flat_____1` (the commercial plate is the same layout
/// on orange, within 4 units): ink y 16–93; "A" 43.5, "E" 106 (pitch 62.5);
/// the four 8s 172, 233, 296, 359 (pitch 62.4); sticker x 389–441 y 38–74;
/// "RB" x 460–495.5 y 62.4–94; map x 461.5–487.5 y 15–60.
///
/// The reference ink is ~77 tall; with the 0.55 ink ratio a 100-unit box
/// gives ~55, so the characters land near 70% of the reference. The box is
/// capped at 100 on the 110-unit plate.
abstract final class _Layout {
  static const double width = 520, height = 110, box = 100, cy = 54.5;

  static const double seriesCx = 43.5, seriesPitch = 62.5;
  static const double numberCx = 172, numberPitch = 62.4;

  /// "RB" under the map, ink 31.6 tall.
  static const PlateBox rb = PlateBox(458, 62, 40, 32);
  static const double rbGlyph = 56;

  /// The map of Benin in the flag colours, x 461.5–487.5 y 15–60; the asset
  /// has a 1:2 aspect so it is 22.5 wide.
  static const PlateBox map = PlateBox(463.5, 15, 22.5, 45);

  /// The inspection sticker: a dark frame (x 389–441 y 38–74) holding a
  /// maroon panel (392–437.5, 41–63) over a white strip (63–70).
  static const PlateBox stickerFrame = PlateBox(389, 38, 52, 36);
  static const PlateBox stickerPanel = PlateBox(392, 41, 45.5, 22);
  static const PlateBox stickerStrip = PlateBox(392, 63, 45.5, 7);
  static const double stickerRadius = 2.5;
}

/// Benin's current plates: `AB 1234` in one row, a sticker, the national
/// map and "RB" at the right. Private is black on white, commercial black on
/// orange; the shape is the same, so one spec serves both. Colour is the
/// theme's: [BeninThemes.private] or [BeninThemes.commercial].
///
/// Not implemented: the two-line and motorcycle variants, and the state,
/// government and diplomatic series, which the article describes but does not
/// picture.
abstract final class BeninPlates {
  static final PlateSpec standard = _spec('bj.standard');

  static List<PlateSpec> get all => <PlateSpec>[standard];

  /// https://commons.wikimedia.org/wiki/File:Flag_map_of_Benin.svg
  /// (`assets/icons/benin_flag_map.svg`, rasterised to the PNG).
  static const PlateDecal _map = PlateDecal(
    image: AssetImage(
      'assets/icons/benin_flag_map.png',
      package: 'benin_plate',
    ),
    box: _Layout.map,
  );

  static PlateSpec _spec(String id) {
    // One field per group over its cells; the spacing brings the font's
    // ~0.6 em advance (glyph at 0.72 of the box) up to the measured pitch.
    PlateSlot field(PlateAlphabet alphabet, int count, double cx, double p) =>
        plateRun(
          alphabet,
          count,
          left: cx - p / 2,
          top: _Layout.cy - _Layout.box / 2,
          pitch: p,
          height: _Layout.box,
        );
    return PlateSpec(
      id: id,
      country: BeninCountry.benin,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      slots: <PlateSlot>[
        field(BeninAlphabets.letters, 2, _Layout.seriesCx, _Layout.seriesPitch),
        field(BeninAlphabets.digits, 4, _Layout.numberCx, _Layout.numberPitch),
      ],
      bands: const <PlateBand>[
        PlateBand(
          box: _Layout.stickerFrame,
          color: Color(0xFF1A1A1A),
          topCornerRadius: _Layout.stickerRadius,
          bottomCornerRadius: _Layout.stickerRadius,
        ),
        PlateBand(
          box: _Layout.stickerPanel,
          color: Color(0xFF7D0000),
          topCornerRadius: 1.5,
        ),
        PlateBand(box: _Layout.stickerStrip, color: Color(0xFFF4F4F4)),
      ],
      labels: const <PlateLabel>[
        PlateLabel(text: 'RB', box: _Layout.rb, glyphHeight: _Layout.rbGlyph),
      ],
      decals: const <PlateDecal>[_map],
      textGroups: PlateTextGroup.perSlot(<String>['series', 'number']),
    );
  }
}
