import 'package:opt_page/features/map/data/model/routes_modifiers/routes_modifiers.dart';
import 'package:opt_page/features/map/data/model/location_info_model/location_info_model.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/model/routes_model/routes_model.dart';

abstract class MapRepo {
  Future<List<PlaceModel>> getPredictions(String input, String sessionToken);
  Future<PlaceDetail> getPlaceDetails(String placeId);
  Future<RoutesModel> fetchRoutes({
    required LocationInfoModel origin,
    required LocationInfoModel destination,
    RoutesModifiers? routesModifiers,
  });
}
