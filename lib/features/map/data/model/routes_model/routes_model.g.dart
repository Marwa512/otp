// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutesModelImpl _$$RoutesModelImplFromJson(Map<String, dynamic> json) =>
    _$RoutesModelImpl(
      distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
      duration: json['duration'] as String?,
      polyline: json['polyline'] == null
          ? null
          : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RoutesModelImplToJson(_$RoutesModelImpl instance) =>
    <String, dynamic>{
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
      'polyline': instance.polyline,
    };
