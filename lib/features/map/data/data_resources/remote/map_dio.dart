import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/model/routes_model/routes_model.dart';

import '../../model/location_info_model/location_info_model.dart';
import '../../model/routes_modifiers/routes_modifiers.dart';

@injectable
class GooglePlacesApi {
  final Dio _dio;

  GooglePlacesApi(this._dio);

  final String baseUrl = 'https://maps.googleapis.com';
  final String apiKey = '';

  Future<List<PlaceModel>> getPrediction({
    required String input,
    required String sessionToken,
  }) async {
    try {
      final response = await _dio.get(
        '$baseUrl/maps/api/place/autocomplete/json',
        queryParameters: {
          'input': input,
          'sessiontoken': sessionToken,
          'key': apiKey,
        },
      );

      final data = response.data['predictions'] as List;
      return data.map((item) => PlaceModel.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to load predictions');
    }
  }

  Future<PlaceDetail> getPlaceDetails({required String placeId}) async {
    try {
      final response = await _dio.get(
        '$baseUrl/maps/api/place/details/json',
        queryParameters: {
          'place_id': placeId,
          'key': apiKey,
        },
      );

      final data = response.data['result'];
      return PlaceDetail.fromJson(data);
    } catch (e) {
      throw Exception('Failed to load place details');
    }
  }

  Future<RoutesModel> fetchRoutes({
    required LocationInfoModel origin,
    required LocationInfoModel destination,
    RoutesModifiers? routesModifiers,
  }) async {
    Uri url =
        Uri.parse('https://routes.googleapis.com/directions/v2:computeRoutes');

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': apiKey,
      'X-Goog-FieldMask':
          'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline',
    };

    Map<String, dynamic> body = {
      "origin": origin.toJson(),
      "destination": destination.toJson(),
      "travelMode": "DRIVE",
      "routingPreference": "TRAFFIC_AWARE",
      "computeAlternativeRoutes": false,
      "routeModifiers": {
        "avoidTolls": false,
        "avoidHighways": false,
        "avoidFerries": false
      },
      "languageCode": "en-US",
    };

    try {
      final response = await _dio.post(
        url.toString(),
        options: Options(headers: headers),
        data: body,
      );

      if (response.statusCode == 200) {
        print("response api ${response.data}");
        return RoutesModel.fromJson(response.data);
      } else {
        throw Exception('No routes found');
      }
    } catch (e) {
      // Handle the error appropriately
      throw Exception('Failed to fetch routes: ${e.toString()}');
    }
  }
}
