import 'package:freezed_annotation/freezed_annotation.dart';

import 'polyline.dart';

part 'routes_model.freezed.dart';
part 'routes_model.g.dart';

@freezed
class RoutesModel with _$RoutesModel {
  factory RoutesModel({
    int? distanceMeters,
    String? duration,
    Polyline? polyline,
  }) = _RoutesModel;

  factory RoutesModel.fromJson(Map<String, dynamic> json) =>
      _$RoutesModelFromJson(json);
}
