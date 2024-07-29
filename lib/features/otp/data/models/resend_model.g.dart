// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResendModelImpl _$$ResendModelImplFromJson(Map<String, dynamic> json) =>
    _$ResendModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      errors: Errors.fromJson(json['errors'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$ResendModelImplToJson(_$ResendModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
      'message': instance.message,
      'success': instance.success,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl();

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) =>
    <String, dynamic>{};
