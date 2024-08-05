import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_model.freezed.dart';
part 'verify_model.g.dart';

@freezed
class VerifyModel with _$VerifyModel {
  const factory VerifyModel({
    Data? data,
    Errors? errors,
    String? message,
    bool? success,
  }) = _VerifyModel;

  factory VerifyModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    Profile? profile,
    String? token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    int? id,
    String? image,
    String? birthdate,
    dynamic hijriBirthdate,
    String? phone,
    String? countryCode,
    String? countryName,
    String? email,
    String? name,
    String? fullName,
    String? residencyNumber,
    String? residencyStatus,
    int? nationalityId,
    String? userNationality,
    int? hasTax,
    dynamic taxNumber,
    String? paymentWays,
    String? paymentWayValue,
    String? paymentType,
    String? bankAccountNumber,
    String? entryTime,
    String? exitTime,
    String? entryTimeFull,
    String? exitTimeFull,
    String? currency,
    int? cancellationReturnPolicyId,
    int? completedProfile,
    int? hasBookingConditions,
    dynamic bookingConditionsText,
    int? totalOrders,
    String? rates,
    int? blocks,
    DateTime? usageAgreementDate,
    String? usageAgreementDay,
    int? ownerTotalOrders,
    int? requestsDebts,
    int? ownerTotalFlats,
    int? ownerSales,
    String? ownerRates,
    int? ownerBlocks,
    int? isVerified,
    DateTime? registeredAt,
    String? registeredYear,
    int? contactusRoom,
    int? ownerWallet,
    int? userWallet,
    int? isManager,
    dynamic ownerId,
    int? newNotifications,
    int? ownerNewNotifications,
    int? newChats,
    int? ownerNewChats,
    int? personaVerified,
    String? personaVerifyLink,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class Errors with _$Errors {
  const factory Errors() = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
