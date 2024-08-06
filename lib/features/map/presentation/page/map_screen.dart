import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/repository/map_repo_imp.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_listview.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_text_field.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/functions/location_serv.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CameraPosition initialCameraPostion;
  TextEditingController textEditingController = TextEditingController();
  List<PlaceModel> places = [];
  String? sessionToken;
  late Uuid uuid;
  Timer? debounce;
  Set<Marker> markers = {};
  late MapRepoImp placesRepository;
  Set<Polyline> polyLines = {};

  late LatLng desintation;
  late GoogleMapController googleMapController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    initialCameraPostion = const CameraPosition(target: LatLng(0, 0));
    uuid = const Uuid();
    placesRepository = getIt<MapRepoImp>();
    fetchPrediction();
  }

  void fetchPrediction() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 100), () async {
        sessionToken ??= uuid.v4();
        if (textEditingController.text.isNotEmpty) {
          try {
            var result = await placesRepository.getPredictions(
              textEditingController.text,
              sessionToken!,
            );
            places = result;
            print(places);
            setState(() {});
          } catch (e) {
            // Handle the error
          }
        } else {
          places.clear();

          setState(() {});
        }
      });
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            polylines: polyLines,
            onMapCreated: (controller) {
              googleMapController = controller;
              updateMyLocation();
            },
            markers: markers,
            initialCameraPosition: initialCameraPostion,
          ),
          Positioned(
            top: 50,
            right: 16,
            left: 16,
            child: Column(
              children: [
                CustomTextField(
                  textEditingController: textEditingController,
                ),
                CustomListView(
                  places: places,
                  mapRepoImp: placesRepository,
                  onPlaceSelect: (placeDetail) async {
                    textEditingController.clear();
                    places.clear();
                    sessionToken = null;

                    setState(() {});
                    desintation = LatLng(placeDetail.geometry!.location!.lat!,
                        placeDetail.geometry!.location!.lng!);

                    // var points = await placesRepository.getRouteData(
                    //     desintation: desintation);

                    // placesRepository.displayRoute(points,
                    //     polyLines: polyLines,
                    //     googleMapController: googleMapController);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void updateMyLocation() async {
    placesRepository.updateCurrentLocation(
        googleMapController: googleMapController,
        markers: markers,
        onUpdatecurrentLocation: () {
          setState(() {});
        });
  }

  // void setMyCameraPosition(LocationData locationData) {
  //   var cameraPosition = CameraPosition(
  //     target: LatLng(locationData.latitude!, locationData.longitude!),
  //     zoom: 15,
  //   );

  //   googleMapController
  //       ?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  // }

  // Future<void> setMyLocationMarker(LocationData locationData) async {
  //   var markerIcon = await BitmapDescriptor.fromAssetImage(
  //     const ImageConfiguration(),
  //     "assets/img/current_location.png",
  //   );
  //   var myLocationMarker = Marker(
  //     icon: markerIcon,
  //     markerId: const MarkerId('my_location_marker'),
  //     position: LatLng(locationData.latitude!, locationData.longitude!),
  //   );

  //   setState(() {
  //     markers.add(myLocationMarker);
  //   });
  // }
}
