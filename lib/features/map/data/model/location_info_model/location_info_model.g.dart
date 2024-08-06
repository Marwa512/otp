// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationInfoModelImpl _$$LocationInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationInfoModelImpl(
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationInfoModelImplToJson(
        _$LocationInfoModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
    };
