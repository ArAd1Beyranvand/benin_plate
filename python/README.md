FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Benin to view examples:

https://platexample.ir/#/discover/benin:python

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

### Install (Python)

Copy `python/plates/countries/benin/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.benin.data import SPECS, THEMES

spec = SPECS["bj.standard"]
theme = THEMES["BeninThemes.private"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `bj.standard`

## Themes

- `BeninThemes.private`
- `BeninThemes.commercial`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `BeninValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/benin_plate/blob/main/LICENSE).
