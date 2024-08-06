import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng.freezed.dart';
part 'lat_lng.g.dart';

@freezed
class LatLngModel with _$LatLng {
  factory LatLngModel({
    double? latitude,
    double? longitude,
  }) = _LatLng;

  factory LatLngModel.fromJson(Map<String, dynamic> json) =>
      _$LatLngFromJson(json);
}
