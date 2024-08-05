import 'package:freezed_annotation/freezed_annotation.dart';

import 'prediction.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  factory PlaceModel({
    List<Prediction>? predictions,
    String? status,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}
