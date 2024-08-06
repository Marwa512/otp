// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:injectable/injectable.dart';
// import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';

// import '../../model/places_model.dart';

// @injectable
// class GooglePlacesApi {
//   final String baseUrl = 'https://maps.googleapis.com/maps/api/place';
//   final String apiKey = '';

//   Future<List<PlaceModel>> getPrediction(
//       {required String input, required String sessionToken}) async {
//     var response = await http.get(Uri.parse(
//         '$baseUrl/autocomplete/json?input=$input&sessiontoken=$sessionToken&key=$apiKey'));

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body)["predictions"];

//       List<PlaceModel> places = [];
//       for (var item in data) {
//         places.add(PlaceModel.fromJson(item));
//       }
//       print('data = $data["predictions"]');
//       return places;
//     } else {
//       throw Exception();
//     }
//   }

//   Future<PlaceDetail> getPlaceDetails({required String placeId}) async {
//     var response = await http
//         .get(Uri.parse('$baseUrl/details/json?key=$apiKey&place_id=$placeId'));

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body)['result'];
//       return PlaceDetail.fromJson(data);
//     } else {
//       throw Exception();
//     }
//   }
// }
