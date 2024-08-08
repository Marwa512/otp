import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';

part 'map_client.g.dart';

@RestApi()
abstract class GooglePlacesApi {
  factory GooglePlacesApi(Dio dio, {String baseUrl}) = _GooglePlacesApi;

  @GET('autocomplete/json')
  Future<List<PlaceModel>> getPrediction({
    @Query('input') required String input,
    @Query('sessiontoken') required String sessionToken,
    @Query('key') required String apiKey,
  });

  @GET('details/json')
  Future<PlaceDetail> getPlaceDetails({
    @Query('place_id') required String placeId,
    @Query('key') required String apiKey,
  });
}
