import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opt_page/core/utils/widget_to.dart';

Future<BitmapDescriptor> getCustomIcon(String text) async {
  return Stack(
    children: [
      Image.asset("assets/img/bubble.png"),
      Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 50),
      )
    ],
  ).toBitmapDescriptor(
      imageSize: const Size(600, 600), logicalSize: const Size(500, 500));
}
