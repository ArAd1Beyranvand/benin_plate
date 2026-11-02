/// Benin's private and commercial plates for `plate_core`, with an advisory
/// validator.
library;

// TODO(py): [D5] one module `plates.countries.benin`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/benin`; tree-shakable.
// TODO(kt): [D5] package `countries.benin` in the countries module.
export 'package:plate_alphabet/plate_alphabet.dart' show BeninAlphabets;

export 'src/benin_colors.dart';
export 'src/benin_country.dart';
export 'src/benin_plates.dart';
export 'src/benin_themes.dart';
export 'src/benin_validators.dart';
