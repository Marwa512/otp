import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with ClusterItem {
  final String name;
  final LatLng latLng;
  final double price;

  Place({required this.name, required this.latLng, required this.price});

  @override
  LatLng get location => latLng;
}
