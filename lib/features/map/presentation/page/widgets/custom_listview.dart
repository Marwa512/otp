import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/map/data/model/place_detail/place_detail.dart';
import 'package:opt_page/features/map/data/model/places_model.dart';
import 'package:opt_page/features/map/data/repository/map_repo_imp.dart';
import 'package:opt_page/features/map/presentation/bloc/map_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.places,
    required this.mapRepoImp,
    required this.onPlaceSelect,
  });

  final List<PlaceModel> places;
  final void Function(PlaceDetail) onPlaceSelect;
  final MapRepoImp mapRepoImp;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapBloc, MapState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(places[index].description!),
                trailing: IconButton(
                  onPressed: () async {
                    var placeDetails = await mapRepoImp
                        .getPlaceDetails(places[index].placeId!);
                    onPlaceSelect(placeDetails);
                  },
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 0,
              );
            },
            itemCount: places.length,
          ),
        );
      },
    );
  }
}
