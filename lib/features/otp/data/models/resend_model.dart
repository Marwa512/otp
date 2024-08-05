import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_model.freezed.dart';
part 'resend_model.g.dart';

@freezed
class ResendModel with _$ResendModel {
  const factory ResendModel({
    required Data data,
    required Errors errors,
    required String message,
    required bool success,
  }) = _ResendModel;

  factory ResendModel.fromJson(Map<String, dynamic> json) =>
      _$ResendModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String phone,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Errors with _$Errors {
  const factory Errors() = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
