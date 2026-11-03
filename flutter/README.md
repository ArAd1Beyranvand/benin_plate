FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Benin to view examples:

https://platexample.ir/#/discover/benin:flutter

# benin_plate

Benin's licence plates for the plate_core library — private (black on white) and commercial (black on orange), with their themes, alphabets and an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/benin_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/benin:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/benin_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/benin:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/benin_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/benin:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/benin_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/benin:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  benin_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `BeninPlates.standard`

## Themes

- `BeninThemes.private`
- `BeninThemes.commercial`

## Change it

`PlateCanvas` takes `spec:` (an entry of `BeninPlates`) and `theme:` (an entry of `BeninThemes`). Set `validator:` to `BeninValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `BeninCountry` — the country panel.
- `BeninValidator` — the plate validator.

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

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/benin_plate/blob/main/LICENSE).
