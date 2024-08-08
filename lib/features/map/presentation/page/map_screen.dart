import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/features/map/data/repository/map_repo_imp.dart';
import 'package:opt_page/features/map/presentation/bloc/map_bloc.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_listview.dart';
import 'package:opt_page/features/map/presentation/page/widgets/custom_text_field.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CameraPosition initialCameraPostion;

  @override
  void initState() {
    super.initState();
    initialCameraPostion = const CameraPosition(target: LatLng(0, 0));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return BlocProvider(
      create: (context) => MapBloc(getIt<MapRepoImp>())
        ..add(const MapEvent.fetchPredictionEvent())
        ..add(const MapEvent.clusterEvent()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: SizedBox(
                  height: screenHeight * .06,
                  child:
                      BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                    return CustomTextField(
                      textEditingController:
                          context.read<MapBloc>().textEditingController,
                    );
                  }),
                ),
              ),
              Stack(children: [
                SizedBox(
                  width: screenWidth,
                  height: screenHeight * .89,
                  child:
                      BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                    return GoogleMap(
                      zoomControlsEnabled: false,
                      // polylines: polyLines,
                      onMapCreated: (controller) {
                        context.read<MapBloc>().googleMapController =
                            controller;
                        context
                            .read<MapBloc>()
                            .clusterManager
                            ?.setMapId(controller.mapId);

                        context
                            .read<MapBloc>()
                            .add(const MapEvent.getCurrentLocationEvent());
                      },
                      markers: context.read<MapBloc>().markers,
                      initialCameraPosition: initialCameraPostion,
                      onCameraMove: (position) {
                        context
                            .read<MapBloc>()
                            .clusterManager
                            ?.onCameraMove(position);
                      },
                      onCameraIdle:
                          context.read<MapBloc>().clusterManager?.updateMap,
                    );
                  }),
                ),
                BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                  return CustomListView(
                    places: context.read<MapBloc>().places,
                    mapRepoImp: getIt<MapRepoImp>(),
                    onPlaceSelect: (placeDetail) async {
                      context.read<MapBloc>().textEditingController.clear();
                      context.read<MapBloc>().places.clear();
                      context.read<MapBloc>().sessionToken = null;
                      // desintation = LatLng(placeDetail.geometry!.location!.lat!,
                      //     placeDetail.geometry!.location!.lng!);

                      // var points = await placesRepository.getRouteData(
                      //     desintation: desintation);

                      // placesRepository.displayRoute(points,
                      //     polyLines: polyLines,
                      //     googleMapController: googleMapController);
                    },
                  );
                }),
              ]),
            ],
          ),
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

  // Future<BitmapDescriptor> getClusterBitmap(int size, {String? text}) async {
  //   final PictureRecorder pictureRecorder = PictureRecorder();
  //   final Canvas canvas = Canvas(pictureRecorder);
  //   final Paint paint1 = Paint()..color = Colors.blue;
  //   // final RRect rrect = RRect.fromRectAndRadius(
  //   //     const Rect.fromLTRB(5, 10, 10, 5), const Radius.circular(10));
  //   // canvas.drawRRect(rrect, paint1);
  //   canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);

  //   if (text != null) {
  //     TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
  //     painter.text = TextSpan(
  //       text: text,
  //       style: TextStyle(
  //           fontSize: size / 3,
  //           color: Colors.white,
  //           fontWeight: FontWeight.normal),
  //     );
  //     painter.layout();
  //     painter.paint(
  //       canvas,
  //       Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
  //     );
  //   }

  //   final img = await pictureRecorder.endRecording().toImage(size, size);
  //   final data = await img.toByteData(format: ImageByteFormat.png);

  //   var icon = await getCustomIcon("");
  //   return icon;

  //   // BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  // }
}
