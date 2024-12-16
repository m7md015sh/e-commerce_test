
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasla/core/constant/app_constants.dart';
import 'package:http/http.dart'as http;
import 'package:wasla/data/model/google_directions_model.dart';
class DirectionsDataService {
  static Future<GoogleDirectionsModel> getDirectionsData(double origin_lat,double origin_long,double destination_lat,double destination_long) async {

    var response = await http.post(

        Uri.parse("https://maps.googleapis.com/maps/api/directions/json?origin=$origin_lat,$origin_long&destination=$destination_lat,$destination_long&key=AIzaSyDAvoYIQHFGUdT4nOGesWpaHP4fHflAHPQ" ));

    if (response.statusCode == 200) {
      var jsonData = response.body;

      return googleDirectionsModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}