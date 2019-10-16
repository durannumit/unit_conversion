import 'package:unit_conversion/unit_conversion.dart';

void main(List<String> arguments) {
  double FahrenheitToCelsius = UnitConverter.FahrenheitToCelsius(32.0);
  double CelsiusToKelvin = UnitConverter.CelsiusToKelvin(0.0);

  print('The values are: ${[FahrenheitToCelsius, CelsiusToKelvin]}');
}