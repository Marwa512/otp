import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';

abstract class MapRepo {
  Future<List<PlaceModel>> getPredictions(String input, String sessionToken);
  Future<PlaceDetail> getPlaceDetails(String placeId);
  void updateCurrentLocation({
    required googleMapController,
    required Set<Marker> markers,
  });

  // Future<RoutesModel> fetchRoutes({
  //   required LocationInfoModel origin,
  //   required LocationInfoModel destination,
  //   RoutesModifiers? routesModifiers,
  // });
}
