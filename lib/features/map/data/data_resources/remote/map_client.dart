import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

part "map_client.g.dart";

@RestApi()
abstract class MapClient {
  factory MapClient(Dio dio, {String baseUrl}) = _MapClient;
  // @POST("place/autocomplete/json?input=tanta&key=AIzaSyBnn5Wv5jcAYQ0Momr-80")
  // Future<PlaceModel> getPlaces(@Body() Map<String, dynamic> body);
}
