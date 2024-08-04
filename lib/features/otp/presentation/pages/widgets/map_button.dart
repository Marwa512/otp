import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:opt_page/core/utils/auto_app_router.dart';

class MapButton extends StatelessWidget {
  const MapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.router.push(const MapRoute());
        },
        icon: const Icon(Icons.location_on));
  }
}
