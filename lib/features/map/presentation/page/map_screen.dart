import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../core/utils/functions/location_serv.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CameraPosition initialCameraPostion;

  late LocationService locationService;

  @override
  void initState() {
    initialCameraPostion = const CameraPosition(
        zoom: 17, target: LatLng(30.791470583131296, 30.995564251910583));
    locationService = LocationService();
    updateMyLocation();
    super.initState();
  }

  GoogleMapController? googleMapController;

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          GoogleMap(
              zoomControlsEnabled: false,
              onMapCreated: (controller) {
                googleMapController = controller;
              },
              markers: markers,
              initialCameraPosition: initialCameraPostion),
        ],
      ),
    );
  }

  void updateMyLocation() async {
    await locationService.checkAndRequestLocationService();
    var hasPermission =
        await locationService.checkAndRequestLocationPermission();
    if (hasPermission) {
      locationService.getRealTimeLocationData((locationData) async {
        await setMyLocationMarker(locationData);
        setMyCameraPosition(locationData);
      });
    }
  }

  void setMyCameraPosition(LocationData locationData) {
    var camerPosition = CameraPosition(
        target: LatLng(locationData.latitude!, locationData.longitude!),
        zoom: 15);

    googleMapController
        ?.animateCamera(CameraUpdate.newCameraPosition(camerPosition));
  }

  Future<void> setMyLocationMarker(LocationData locationData) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), "assets/img/current_location.png");
    var myLocationMarker = Marker(
        icon: markerIcon,
        markerId: const MarkerId(
          'my_location_marker',
        ),
        position: LatLng(locationData.latitude!, locationData.longitude!));

    markers.add(myLocationMarker);
    setState(() {});
  }
}
