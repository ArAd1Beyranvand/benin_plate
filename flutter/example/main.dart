import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:benin_plate/benin_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: BeninPlates.standard, theme: BeninThemes.private),
);
