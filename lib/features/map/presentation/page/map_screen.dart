import 'dart:async';
import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/repository/map_repo_imp.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_listview.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_text_field.dart';
import 'package:uuid/uuid.dart';

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
  late ClusterManager clusterManager;
  List<Place> items = [
    Place(
        name: "صيدلية",
        latLng: const LatLng(30.81031656555002, 30.985467414777734)),
    Place(
        name: "بيت المشويات",
        latLng: const LatLng(30.808734129147286, 30.99455476480729)),
    Place(
        name: "فكرة ",
        latLng: const LatLng(30.81303586718473, 30.994840973106303)),
    Place(
        name: "شركة كاندي",
        latLng: const LatLng(30.81656929361887, 30.98407238585583)),
  ];
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    initialCameraPostion = const CameraPosition(target: LatLng(0, 0));
    uuid = const Uuid();
    placesRepository = getIt<MapRepoImp>();
    fetchPrediction();
    clusterManager = ClusterManager<Place>(
        items, // Your items to be clustered on the map (of Place type for this example)
        _updateMarkers, // Method to be called when markers are updated
        markerBuilder:
            markerBuilder, // Optional : Method to implement if you want to customize markers
        levels: [
          1,
          4.25,
          6.75,
          8.25,
          11.5,
          14.5,
          16.0,
          16.5,
          20.0
        ], // Optional : Configure this if you want to change zoom levels at which the clustering precision change
        extraPercent:
            0.2, // Optional : This number represents the percentage (0.2 for 20%) of latitude and longitude (in each direction) to be considered on top of the visible map bounds to render clusters. This way, clusters don't "pop out" when you cross the map.
        stopClusteringZoom:
            17.0 // Optional : The zoom level to stop clustering, so it's only rendering single item "clusters"
        );
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
            if (kDebugMode) {
              print(places);
            }
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
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    void updateMyLocation() async {
      placesRepository.updateCurrentLocation(
          googleMapController: googleMapController,
          markers: markers,
          onUpdatecurrentLocation: () {
            setState(() {});
          });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: SizedBox(
                height: screenHeight * .06,
                child: CustomTextField(
                  textEditingController: textEditingController,
                ),
              ),
            ),
            Stack(children: [
              SizedBox(
                width: screenWidth,
                height: screenHeight * .89,
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  polylines: polyLines,
                  onMapCreated: (controller) {
                    googleMapController = controller;
                    clusterManager.setMapId(controller.mapId);

                    updateMyLocation();
                  },
                  markers: markers,
                  initialCameraPosition: initialCameraPostion,
                  onCameraMove: (position) {
                    clusterManager.onCameraMove(position);
                  },
                  onCameraIdle: clusterManager.updateMap,
                ),
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
            ]),
          ],
        ),
      ),
    );
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
  void _updateMarkers(Set<Marker> clusterMarkers) {
    setState(() {
      markers.addAll(clusterMarkers);
    });
  }

  static Future<Marker> Function(Cluster) get markerBuilder => (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () {
            print(cluster.items);
          },
          icon: await getClusterBitmap(cluster.isMultiple ? 125 : 75,
              text: cluster.isMultiple ? cluster.count.toString() : "cluster"),
        );
      };

  static Future<BitmapDescriptor> getClusterBitmap(int size,
      {String? text}) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Colors.blue;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }
}

class Place with ClusterItem {
  final String name;
  final LatLng latLng;

  Place({required this.name, required this.latLng});

  @override
  LatLng get location => latLng;
}
