import 'package:freezed_annotation/freezed_annotation.dart';

import 'polyline.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  factory RouteModel({
    int? distanceMeters,
    String? duration,
    Polyline? polyline,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}
