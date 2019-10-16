import 'package:unit_conversion/unit_conversion.dart';

void main(List<String> arguments) {

  // created a double variable and converted FahrenheitToCelsius with using Unit Converter
  double fahrenheitToCelsius = UnitConverter.fahrenheitToCelsius(32.0);

  // created a double variable and converted CelsiusToKelvin with using Unit Converter
  double celsiusToKelvin = UnitConverter.celsiusToKelvin(0.0);

  print('The values are: ${[fahrenheitToCelsius, celsiusToKelvin]}');
}