import 'package:freezed_annotation/freezed_annotation.dart';

import 'lat_lng.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class LocationModel with _$Location {
  factory LocationModel({
    LatLngModel? latLng,
  }) = _Location;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
