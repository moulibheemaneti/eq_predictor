import 'dart:async';

import 'package:location/location.dart';
import 'package:eq_predictor/models/userLocation.dart';

class LocationService{
  // Keeps track of user location
  UserLocation _currentLocation;

  Location location = Location();

  // continously emit location updates
  StreamController<UserLocation> _locationController = StreamController<UserLocation>.broadcast();

  LocationService(){
    location.requestPermission().then((granted){
      if(granted == PermissionStatus.GRANTED){
        location.onLocationChanged().listen((locationData) {
          if(locationData != null){
            _locationController.add(UserLocation(
                latitude: locationData.latitude,
                longitude: locationData.longitude
            ));
          }
        });
      }
      else if(granted == PermissionStatus.DENIED){
      }
    });
  }

  Stream<UserLocation> get locationStream => _locationController.stream;

  Future<UserLocation> getLocation() async{
    try{
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    }
    catch(e){
      print("Could not get the location because of $e");
    }

    return _currentLocation;
  }
}