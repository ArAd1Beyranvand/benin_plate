FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Benin to view examples:

https://platexample.ir/#/discover/benin

# benin_plate

Benin's private and commercial plates for `plate_core`, with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  benin_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:benin_plate/benin_plate.dart';

PlateCanvas(
  spec: BeninPlates.standard,
  theme: BeninThemes.private,
  validator: const BeninValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `BeninCountry` — country panel: `benin`.
- `BeninPlates` — 1 plate spec: `standard`.
- `BeninThemes` — 2 themes: `private`, `commercial`.
- `BeninValidator` — advisory validator; flags the frame, never blocks a keystroke.
- 1 bundled asset (`benin_flag_map.png`).

## Plates

Benin's current plates: `AB 1234` in one row, a sticker, the national
map and "RB" at the right. Private is black on white, commercial black on
orange; the shape is the same, so one spec serves both. Colour is the
theme's: `BeninThemes.private` or `BeninThemes.commercial`.

Not implemented: the two-line and motorcycle variants, and the state,
government and diplomatic series, which the article describes but does not
picture.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

