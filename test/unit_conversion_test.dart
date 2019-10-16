import 'package:flutter_test/flutter_test.dart';
import 'package:unit_conversion/unit_conversion.dart';

void main() {
  //test FahrenheitToCelsius
  test('fahrenheitToCelsius', () {
    expect(UnitConverter.fahrenheitToCelsius(32.0), 0.0);
  });

  //test celsiusToFahrenheit
  test('celsiusToFahrenheit', () {
    expect(UnitConverter.celsiusToFahrenheit(30.0), 86.0);
  });

  //test celsiusToKelvin
  test('celsiusToKelvin', () {
    expect(UnitConverter.celsiusToKelvin(0.0), 273.15);
  });

  //test kelvinToCelsius
  test('kelvinToCelsius', () {
    expect(UnitConverter.kelvinToCelsius(303.15), 30.0);
  });

  //test milesToMeters
  test('milesToMeters', () {
    expect(UnitConverter.milesToMeters(100.0), 160934.4);
  });

  //test milesToKilometers
  test('milesToKilometers', () {
    expect(UnitConverter.milesToKilometers(100.0), 160.9344);
  });

  //test kilometersToMiles
  test('kilometersToMiles', () {
    expect(UnitConverter.kilometersToMiles(100.0), 62.13711922373339);
  });

  //test degreesToRadians
  test('degreesToRadians', () {
    expect(UnitConverter.degreesToRadians(180.0), 3.141592653589793);
  });

  //test radiansToDegrees
  test('radiansToDegrees', () {
    expect(UnitConverter.radiansToDegrees(1.0), 57.29577951308232);
  });

  //test degreesPerSecondToRadiansPerSecond
  test('degreesPerSecondToRadiansPerSecond', () {
    expect(UnitConverter.degreesPerSecondToRadiansPerSecond(100.0), 1.7453292519943295);
  });

  //test radiansPerSecondToDegreesPerSecond
  test('radiansPerSecondToDegreesPerSecond', () {
    expect(UnitConverter.radiansPerSecondToDegreesPerSecond(100.0), 5729.577951308232);
  });

  //test degreesPerSecondToHertz
  test('degreesPerSecondToHertz', () {
    expect(UnitConverter.degreesPerSecondToHertz(1000.0), 2.7777777777777777);
  });

  //test radiansPerSecondToHertz
  test('radiansPerSecondToHertz', () {
    expect(UnitConverter.radiansPerSecondToHertz(10.0), 1.5915494309189535);
  });

  //test hertzToDegreesPerSecond
  test('hertzToDegreesPerSecond', () {
    expect(UnitConverter.hertzToDegreesPerSecond(1.0), 360.0);
  });

  //test hertzToRadiansPerSecond
  test('hertzToRadiansPerSecond', () {
    expect(UnitConverter.hertzToRadiansPerSecond(100.0), 628.3185307179587);
  });

  //test kilopascalsToHectopascals
  test('kilopascalsToHectopascals', () {
    expect(UnitConverter.kilopascalsToHectopascals(10.0), 100.0);
  });

  //test hectopascalsToKilopascals
  test('hectopascalsToKilopascals', () {
    expect(UnitConverter.hectopascalsToKilopascals(10.0), 1.0);
  });

  //test kilopascalsToPascals
  test('kilopascalsToPascals', () {
    expect(UnitConverter.kilopascalsToPascals(1.0), 1000.0);
  });

  //test kilopascalsToPascals
  test('kilopascalsToPascals', () {
    expect(UnitConverter.kilopascalsToPascals(1.0), 1000.0);
  });

  //test kilopascalsToPascals
  test('kilopascalsToPascals', () {
    expect(UnitConverter.kilopascalsToPascals(20.0), 20000.0);
  });

  //test atmospheresToPascals
  test('atmospheresToPascals', () {
    expect(UnitConverter.atmospheresToPascals(1.0), 101325.0);
  });

  //test pascalsToAtmospheres
  test('pascalsToAtmospheres', () {
    expect(UnitConverter.pascalsToAtmospheres(1000000.0), 9.869232667160128);
  });

  //test coordinatesToMiles
  test('coordinatesToMiles', () {
    expect(UnitConverter.coordinatesToMiles(39.766193,30.526714,41.015137,28.979530), 118.63719112130482);
  });

  //test coordinatesToKilometers
  test('coordinatesToKilometers', () {
    expect(UnitConverter.coordinatesToKilometers(39.766193,30.526714,41.015137,28.979530), 190.9280517079252);
  });

}
