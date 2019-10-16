library unit_conversion;

import 'units.dart';
import 'dart:math' as math;

class UnitConverter {

  /// This library is created for doing conversations much more easier.
  /// More conversations will add.
  /// PR's are welcome.


  // fahrenheitToCelsius conversion
  static double fahrenheitToCelsius(double fahrenheit) =>
      (fahrenheit - 32.0) / 1.8;

  // celsiusToFahrenheit conversion
  static double celsiusToFahrenheit(double celsius) => (celsius * 1.8) + 32.0;

  // celsiusToKelvin conversion
  static double celsiusToKelvin(double celsius) =>
      celsius + Units.celsiusToKelvin;

  // kelvinToCelsius conversion
  static double kelvinToCelsius(double kelvin) =>
      kelvin - Units.celsiusToKelvin;

  // milesToMeters conversion
  static double milesToMeters(double miles) => miles * Units.milesToMeters;

  // milesToKilometers conversion
  static double milesToKilometers(double miles) =>
      miles * Units.milesToKilometers;

  // kilometersToMiles conversion
  static double kilometersToMiles(double kilometers) =>
      kilometers * Units.kilometersToMiles;

  // degreesToRadians conversion
  static double degreesToRadians(double degrees) =>
      degrees * Units.degreesToRadians;

  // radiansToDegrees conversion
  static double radiansToDegrees(double radians) =>
      radians / Units.degreesToRadians;

  // degreesPerSecondToRadiansPerSecond conversion
  static double degreesPerSecondToRadiansPerSecond(double degrees) =>
      hertzToRadiansPerSecond(degreesPerSecondToHertz(degrees));

  // radiansPerSecondToDegreesPerSecond conversion
  static double radiansPerSecondToDegreesPerSecond(double radians) =>
      hertzToDegreesPerSecond(radiansPerSecondToHertz(radians));

  // degreesPerSecondToHertz conversion
  static double degreesPerSecondToHertz(double degrees) =>
      degrees / Units.totalDegrees;

  // radiansPerSecondToHertz conversion
  static double radiansPerSecondToHertz(double radians) =>
      radians / Units.twoPi;

  // hertzToDegreesPerSecond conversion
  static double hertzToDegreesPerSecond(double hertz) =>
      hertz * Units.totalDegrees;

  // hertzToRadiansPerSecond conversion
  static double hertzToRadiansPerSecond(double hertz) => hertz * Units.twoPi;

  // kilopascalsToHectopascals conversion
  static double kilopascalsToHectopascals(double kpa) => kpa * 10.0;

  // hectopascalsToKilopascals conversion
  static double hectopascalsToKilopascals(double hpa) => hpa / 10.0;

  // kilopascalsToPascals conversion
  static double kilopascalsToPascals(double kpa) => kpa * 1000.0;

  // hectopascalsToPascals conversion
  static double hectopascalsToPascals(double hpa) => hpa * 100.0;

  // atmospheresToPascals conversion
  static double atmospheresToPascals(double atm) =>
      atm * Units.atmospherePascals;

  // pascalsToAtmospheres conversion
  static double pascalsToAtmospheres(double pascals) =>
      pascals / Units.atmospherePascals;

  // coordinatesToMiles conversion
  static double coordinatesToMiles(
          double lat1, double lon1, double lat2, double lon2) =>
      kilometersToMiles(coordinatesToKilometers(lat1, lon1, lat2, lon2));

  // coordinatesToKilometers conversion
  static double coordinatesToKilometers(
      double lat1, double lon1, double lat2, double lon2) {
    if (lat1 == lat2 && lon1 == lon2) return 0;

    var dLat = degreesToRadians(lat2 - lat1);
    var dLon = degreesToRadians(lon2 - lon1);

    lat1 = degreesToRadians(lat1);
    lat2 = degreesToRadians(lat2);

    var dLat2 = math.sin(dLat / 2) * math.sin(dLat / 2);
    var dLon2 = math.sin(dLon / 2) * math.sin(dLon / 2);

    var a = dLat2 + (dLon2 * math.cos(lat1) * math.cos(lat2));
    var c = 2 * math.asin(math.sqrt(a));

    return Units.meanEarthRadiusInKilometers * c;
  }
}
