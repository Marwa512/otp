import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/features/map/data/data_resources/remote/map_dio.dart';
import 'package:opt_page/features/map/data/model/routes_modifiers/routes_modifiers.dart';
import 'package:opt_page/features/map/data/model/location_info_model/lat_lng.dart';
import 'package:opt_page/features/map/data/model/location_info_model/location_model.dart';
import 'package:opt_page/features/map/data/model/location_info_model/location_info_model.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/model/routes_model/routes_model.dart';
import 'package:opt_page/features/map/domain/repository/map_repo.dart';

import '../../../../core/utils/functions/location_serv.dart';

@injectable
class MapRepoImp implements MapRepo {
  final GooglePlacesApi _googlePlacesApi;

  MapRepoImp(this._googlePlacesApi);
  LatLng? currentLocation;
  LocationService locationService = LocationService();

  @override
  Future<List<PlaceModel>> getPredictions(String input, String sessionToken) {
    return _googlePlacesApi.getPrediction(
        input: input, sessionToken: sessionToken);
  }

  @override
  Future<PlaceDetail> getPlaceDetails(String placeId) {
    return _googlePlacesApi.getPlaceDetails(placeId: placeId);
  }

  @override
  Future<RoutesModel> fetchRoutes({
    required LocationInfoModel origin,
    required LocationInfoModel destination,
    RoutesModifiers? routesModifiers,
  }) {
    return _googlePlacesApi.fetchRoutes(
      origin: origin,
      destination: destination,
      routesModifiers: routesModifiers,
    );
  }

  Future<RoutesModel> getRouteData({required LatLng desintation}) async {
    if (kDebugMode) {
      print('current location');
      print(currentLocation);
    }
    LocationInfoModel origin = LocationInfoModel(
      location: LocationModel(
          latLng: LatLngModel(
        latitude: currentLocation!.latitude,
        longitude: currentLocation!.longitude,
      )),
    );
    LocationInfoModel destination = LocationInfoModel(
      location: LocationModel(
          latLng: LatLngModel(
        latitude: desintation.latitude,
        longitude: desintation.longitude,
      )),
    );
    RoutesModel routes =
        await fetchRoutes(origin: origin, destination: destination);
    // PolylinePoints polylinePoints = PolylinePoints();
    // List<LatLng> points = getDecodedRoute(polylinePoints, routes);
    return routes;
  }

  List<LatLng> getDecodedRoute(
      PolylinePoints polylinePoints, RoutesModel routes) {
    if (kDebugMode) {
      print("routes $routes");
    }
    List<PointLatLng> result = polylinePoints.decodePolyline(
      routes.polyline!.encodedPolyline!,
    );

    List<LatLng> points =
        result.map((e) => LatLng(e.latitude, e.longitude)).toList();
    return points;
  }

  void displayRoute(List<LatLng> points,
      {required Set<Polyline> polyLines,
      required GoogleMapController googleMapController}) {
    Polyline route = Polyline(
      color: Colors.blue,
      width: 5,
      polylineId: const PolylineId('route'),
      points: points,
    );

    polyLines.add(route);

    LatLngBounds bounds = getLatLngBounds(points);
    googleMapController.animateCamera(CameraUpdate.newLatLngBounds(bounds, 32));
  }

  LatLngBounds getLatLngBounds(List<LatLng> points) {
    var southWestLatitude = points.first.latitude;
    var southWestLongitude = points.first.longitude;
    var northEastLatitude = points.first.latitude;
    var northEastLongitude = points.first.longitude;

    for (var point in points) {
      southWestLatitude = min(southWestLatitude, point.latitude);
      southWestLongitude = min(southWestLongitude, point.longitude);
      northEastLatitude = max(northEastLatitude, point.latitude);
      northEastLongitude = max(northEastLongitude, point.longitude);
    }

    return LatLngBounds(
        southwest: LatLng(southWestLatitude, southWestLongitude),
        northeast: LatLng(northEastLatitude, northEastLongitude));
  }

  void updateCurrentLocation(
      {required GoogleMapController googleMapController,
      required Set<Marker> markers,
      required Function onUpdatecurrentLocation}) {
    locationService.getRealTimeLocationData((locationData) async {
      var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(),
        "assets/img/current_location.png",
      );
      currentLocation = LatLng(locationData.latitude!, locationData.longitude!);
      if (kDebugMode) {
        print("current location $currentLocation location data $locationData");
      }
      Marker currentLocationMarker = Marker(
        icon: markerIcon,
        markerId: const MarkerId('my location'),
        position: currentLocation!,
      );
      CameraPosition myCurrentCameraPoistion = CameraPosition(
        target: currentLocation!,
        zoom: 17,
      );
      googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(myCurrentCameraPoistion));
      markers.add(currentLocationMarker);
      onUpdatecurrentLocation();
    });
  }
}
