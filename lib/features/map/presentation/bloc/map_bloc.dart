import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/core/utils/functions/custom_icon.dart';
import 'package:opt_page/core/utils/widget_to.dart';
import 'package:opt_page/features/map/domain/entities/cluster_entity.dart';
import 'package:uuid/uuid.dart';

import '../../data/model/places_model.dart';
import '../../data/repository/map_repo_imp.dart';

part 'map_state.dart';
part 'map_event.dart';
part 'map_bloc.freezed.dart';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  final MapRepoImp placesRepository;
  late GoogleMapController googleMapController;
  Set<Marker> markers = {};
  TextEditingController textEditingController = TextEditingController();
  List<PlaceModel> places = [];
  String? sessionToken;
  late Uuid uuid;
  Timer? debounce;
  ClusterManager? clusterManager;
  List<Place> items = [
    Place(
        price: 20,
        name: "صيدلية",
        latLng: const LatLng(30.81031656555002, 30.985467414777734)),
    Place(
        price: 30,
        name: "بيت المشويات",
        latLng: const LatLng(30.808734129147286, 30.99455476480729)),
    Place(
      price: 40,
      name: "فكرة ",
      latLng: const LatLng(30.81303586718473, 30.994840973106303),
    ),
    Place(
        price: 50,
        name: "شركة كاندي",
        latLng: const LatLng(30.81656929361887, 30.98407238585583)),
  ];
  MapBloc(this.placesRepository) : super(const MapState.initial()) {
    on<MapEvent>(
      (event, emit) {
        event.when(
          getCurrentLocationEvent: () {
            placesRepository.updateCurrentLocation(
              googleMapController: googleMapController,
              markers: markers,
            );
            emit(const GetCurrentLocationSuccess());
          },
          fetchPredictionEvent: () async {
            textEditingController = TextEditingController();
            uuid = const Uuid();
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
                    if (!emit.isDone) {
                      emit(const FetchPredictionSuccess());
                    }
                  } catch (e) {
                    if (!emit.isDone) {
                      emit(const FetchPredictionFailed());
                    }
                  }
                } else {
                  places.clear();
                }
              });
            });
          },
          clusterEvent: () {
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

            emit(const GetClusterSuccess());
          },
        );
      },
    );
  }

  void _updateMarkers(Set<Marker> clusterMarkers) {
    markers.addAll(clusterMarkers);
  }

  Future<Marker> Function(Cluster<Place>) get markerBuilder {
    return (cluster) async {
      return Marker(
        markerId: MarkerId(cluster.getId()),
        position: cluster.location,
        icon: cluster.isMultiple
            ? await getCustomIcon("ر.س")
            : await getCustomIcon("${cluster.items.single.price}  ر.س"),
        infoWindow: cluster.isMultiple
            ? const InfoWindow()
            : InfoWindow(title: cluster.items.single.name),
      );
    };
  }
}
