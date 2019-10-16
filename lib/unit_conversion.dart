library unit_conversion;
import 'units.dart';
import 'dart:math' as math;



class UnitConverter {

   static double FahrenheitToCelsius(double fahrenheit) =>
      (fahrenheit - 32.0) / 1.8;

   static double CelsiusToFahrenheit(double celsius) =>
       (celsius * 1.8) + 32.0;

   static double CelsiusToKelvin(double celsius) =>
       celsius + Units.celsiusToKelvin;

   static double KelvinToCelsius(double kelvin) =>
       kelvin - Units.celsiusToKelvin;

   static double MilesToMeters(double miles) =>
       miles * Units.milesToMeters;

   static double MilesToKilometers(double miles) =>
       miles * Units.milesToKilometers;

   static double KilometersToMiles(double kilometers) =>
       kilometers * Units.kilometersToMiles;

   static double DegreesToRadians(double degrees) =>
       degrees * Units.degreesToRadians;

   static double RadiansToDegrees(double radians) =>
       radians / Units.degreesToRadians;

   static double DegreesPerSecondToRadiansPerSecond(double degrees) =>
       HertzToRadiansPerSecond(DegreesPerSecondToHertz(degrees));

   static double RadiansPerSecondToDegreesPerSecond(double radians) =>
       HertzToDegreesPerSecond(RadiansPerSecondToHertz(radians));

   static double DegreesPerSecondToHertz(double degrees) =>
       degrees / Units.totalDegrees;

   static double RadiansPerSecondToHertz(double radians) =>
       radians / Units.twoPi;

   static double HertzToDegreesPerSecond(double hertz) =>
       hertz * Units.totalDegrees;

   static double HertzToRadiansPerSecond(double hertz) =>
       hertz * Units.twoPi;

   static double KilopascalsToHectopascals(double kpa) =>
       kpa * 10.0;

   static double HectopascalsToKilopascals(double hpa) =>
       hpa / 10.0;

   static double KilopascalsToPascals(double kpa) =>
       kpa * 1000.0;

   static double HectopascalsToPascals(double hpa) =>
       hpa * 100.0;

   static double AtmospheresToPascals(double atm) =>
       atm * Units.atmospherePascals;

   static double PascalsToAtmospheres(double pascals) =>
       pascals / Units.atmospherePascals;

   static double CoordinatesToMiles(double lat1, double lon1, double lat2, double lon2) =>
       KilometersToMiles(CoordinatesToKilometers(lat1, lon1, lat2, lon2));

   static double CoordinatesToKilometers(double lat1, double lon1, double lat2, double lon2)
   {
     if (lat1 == lat2 && lon1 == lon2)
       return 0;

     var dLat = DegreesToRadians(lat2 - lat1);
     var dLon = DegreesToRadians(lon2 - lon1);

     lat1 = DegreesToRadians(lat1);
     lat2 = DegreesToRadians(lat2);

     var dLat2 = math.sin(dLat / 2) * math.sin(dLat / 2);
     var dLon2 = math.sin(dLon / 2) * math.sin(dLon / 2);

     var a = dLat2 + (dLon2 * math.cos(lat1) * math.cos(lat2));
     var c = 2 * math.asin(math.sqrt(a));

     return Units.meanEarthRadiusInKilometers * c;
   }
}
