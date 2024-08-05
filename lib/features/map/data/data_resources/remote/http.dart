import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opt_page/features/map/data/model/place_model/place_model.dart';

class GooglePlacesApi {
  final String baseUrl = 'https://maps.googleapis.com/maps/api/place';
  final String apiKey = 'AIzaSyBnn5Wv5jcAYQ0Momr-80yZqCIVXDrx4co';

  Future<List<PlaceModel>> getPrediction({required String input}) async {
    var response = await http
        .get(Uri.parse('$baseUrl/autocomplete/json?input=$input&key=$apiKey'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['predictions'];

      List<PlaceModel> places = [];
      for (var item in data) {
        places.add(PlaceModel.fromJson(item));
      }
      return places;
    } else {
      throw Exception();
    }
  }
}
