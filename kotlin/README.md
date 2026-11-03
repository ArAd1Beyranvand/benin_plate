FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Benin to view examples:

https://platexample.ir/#/discover/benin:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/benin/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.benin.country

val spec = country.specs["bj.standard"]
println(country.pkg)
```

## Specs

The specs are the same in every language (they come from shared data).

- `bj.standard`

## Themes

- `BeninThemes.private`
- `BeninThemes.commercial`

## Change it

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`BeninValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/benin_plate/blob/main/LICENSE).
