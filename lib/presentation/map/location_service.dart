import 'package:geolocator/geolocator.dart';

class DeterminePoint {
  Position? result;

  Future<Position?> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    Position defaultPoint = Position(
      longitude: 37.6155600,
      latitude: 55.7522200,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0,
      speedAccuracy: 0,
    );

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return defaultPoint;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return defaultPoint;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return defaultPoint;
    }
    return result = await Geolocator.getCurrentPosition();
  }
}
