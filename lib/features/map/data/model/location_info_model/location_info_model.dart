import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'location_info_model.freezed.dart';
part 'location_info_model.g.dart';

@freezed
class LocationInfoModel with _$LocationInfoModel {
  factory LocationInfoModel({
    LocationModel? location,
  }) = _LocationInfoModel;

  factory LocationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LocationInfoModelFromJson(json);
}
