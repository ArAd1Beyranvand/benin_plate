import { PlateCheck, RuledPlateValidator } from '../../core/validators/plate_validator';

/** Judges a Beninese plate: two letters (the series) and four digits, `AB 1234`.
 * Reports, never bars a keystroke. */
export class BeninValidator extends RuledPlateValidator {
  readonly checks = [
    new PlateCheck('series', '[A-Z]{2}', 'The series is 2 letters.'),
    new PlateCheck('number', '[0-9]{4}', 'The number is 4 digits.'),
  ];
}
