import 'package:flutter_test/flutter_test.dart';
import 'package:unit_conversion/unit_conversion.dart';

void main() {
  test('FahrenheitToCelsius', () {
    expect(UnitConverter.FahrenheitToCelsius(32.0), 0.0);
  });

  test('CelsiusToFahrenheit', () {
    expect(UnitConverter.CelsiusToFahrenheit(30.0), 86.0);
  });

  test('CelsiusToKelvin', () {
    expect(UnitConverter.CelsiusToKelvin(0.0), 273.15);
  });

  test('KelvinToCelsius', () {
    expect(UnitConverter.KelvinToCelsius(303.15), 30.0);
  });

  test('MilesToMeters', () {
    expect(UnitConverter.MilesToMeters(100.0), 160934.4);
  });

  test('MilesToKilometers', () {
    expect(UnitConverter.MilesToKilometers(100.0), 160.9344);
  });

  test('KilometersToMiles', () {
    expect(UnitConverter.KilometersToMiles(100.0), 62.13711922373339);
  });

  test('DegreesToRadians', () {
    expect(UnitConverter.DegreesToRadians(180.0), 3.141592653589793);
  });

  test('RadiansToDegrees', () {
    expect(UnitConverter.RadiansToDegrees(1.0), 57.29577951308232);
  });

  test('DegreesPerSecondToRadiansPerSecond', () {
    expect(UnitConverter.DegreesPerSecondToRadiansPerSecond(100.0), 1.7453292519943295);
  });

  test('RadiansPerSecondToDegreesPerSecond', () {
    expect(UnitConverter.RadiansPerSecondToDegreesPerSecond(100.0), 5729.577951308232);
  });

  test('DegreesPerSecondToHertz', () {
    expect(UnitConverter.DegreesPerSecondToHertz(1000.0), 2.7777777777777777);
  });

  test('RadiansPerSecondToHertz', () {
    expect(UnitConverter.RadiansPerSecondToHertz(10.0), 1.5915494309189535);
  });

  test('HertzToDegreesPerSecond', () {
    expect(UnitConverter.HertzToDegreesPerSecond(1.0), 360.0);
  });

  test('HertzToRadiansPerSecond', () {
    expect(UnitConverter.HertzToRadiansPerSecond(100.0), 628.3185307179587);
  });

  test('KilopascalsToHectopascals', () {
    expect(UnitConverter.KilopascalsToHectopascals(10.0), 100.0);
  });

  test('HectopascalsToKilopascals', () {
    expect(UnitConverter.HectopascalsToKilopascals(10.0), 1.0);
  });

  test('KilopascalsToPascals', () {
    expect(UnitConverter.KilopascalsToPascals(1.0), 1000.0);
  });

  test('KilopascalsToPascals', () {
    expect(UnitConverter.KilopascalsToPascals(1.0), 1000.0);
  });

  test('HectopascalsToPascals', () {
    expect(UnitConverter.KilopascalsToPascals(20.0), 20000.0);
  });

  test('AtmospheresToPascals', () {
    expect(UnitConverter.AtmospheresToPascals(1.0), 101325.0);
  });

  test('PascalsToAtmospheres', () {
    expect(UnitConverter.PascalsToAtmospheres(1000000.0), 9.869232667160128);
  });

  test('CoordinatesToMiles', () {
    expect(UnitConverter.CoordinatesToMiles(39.766193,30.526714,41.015137,28.979530), 118.63719112130482);
  });

  test('CoordinatesToKilometers', () {
    expect(UnitConverter.CoordinatesToKilometers(39.766193,30.526714,41.015137,28.979530), 190.9280517079252);
  });

}
