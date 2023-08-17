// Package imports:
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MyLocationHelper {
  //
  static Future<LatLng> getLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final latLang = LatLng(position.latitude, position.longitude);

    return latLang;
  }

  static Future<Placemark> getPlacemark() async {
    final LatLng position = await getLocation();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];

    return place;
  }
}
