// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyModelImpl _$$VerifyModelImplFromJson(Map<String, dynamic> json) =>
    _$VerifyModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$VerifyModelImplToJson(_$VerifyModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
      'message': instance.message,
      'success': instance.success,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'token': instance.token,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      birthdate: json['birthdate'] as String?,
      hijriBirthdate: json['hijriBirthdate'],
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      residencyNumber: json['residencyNumber'] as String?,
      residencyStatus: json['residencyStatus'] as String?,
      nationalityId: (json['nationalityId'] as num?)?.toInt(),
      userNationality: json['userNationality'] as String?,
      hasTax: (json['hasTax'] as num?)?.toInt(),
      taxNumber: json['taxNumber'],
      paymentWays: json['paymentWays'] as String?,
      paymentWayValue: json['paymentWayValue'] as String?,
      paymentType: json['paymentType'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      entryTime: json['entryTime'] as String?,
      exitTime: json['exitTime'] as String?,
      entryTimeFull: json['entryTimeFull'] as String?,
      exitTimeFull: json['exitTimeFull'] as String?,
      currency: json['currency'] as String?,
      cancellationReturnPolicyId:
          (json['cancellationReturnPolicyId'] as num?)?.toInt(),
      completedProfile: (json['completedProfile'] as num?)?.toInt(),
      hasBookingConditions: (json['hasBookingConditions'] as num?)?.toInt(),
      bookingConditionsText: json['bookingConditionsText'],
      totalOrders: (json['totalOrders'] as num?)?.toInt(),
      rates: json['rates'] as String?,
      blocks: (json['blocks'] as num?)?.toInt(),
      usageAgreementDate: json['usageAgreementDate'] == null
          ? null
          : DateTime.parse(json['usageAgreementDate'] as String),
      usageAgreementDay: json['usageAgreementDay'] as String?,
      ownerTotalOrders: (json['ownerTotalOrders'] as num?)?.toInt(),
      requestsDebts: (json['requestsDebts'] as num?)?.toInt(),
      ownerTotalFlats: (json['ownerTotalFlats'] as num?)?.toInt(),
      ownerSales: (json['ownerSales'] as num?)?.toInt(),
      ownerRates: json['ownerRates'] as String?,
      ownerBlocks: (json['ownerBlocks'] as num?)?.toInt(),
      isVerified: (json['isVerified'] as num?)?.toInt(),
      registeredAt: json['registeredAt'] == null
          ? null
          : DateTime.parse(json['registeredAt'] as String),
      registeredYear: json['registeredYear'] as String?,
      contactusRoom: (json['contactusRoom'] as num?)?.toInt(),
      ownerWallet: (json['ownerWallet'] as num?)?.toInt(),
      userWallet: (json['userWallet'] as num?)?.toInt(),
      isManager: (json['isManager'] as num?)?.toInt(),
      ownerId: json['ownerId'],
      newNotifications: (json['newNotifications'] as num?)?.toInt(),
      ownerNewNotifications: (json['ownerNewNotifications'] as num?)?.toInt(),
      newChats: (json['newChats'] as num?)?.toInt(),
      ownerNewChats: (json['ownerNewChats'] as num?)?.toInt(),
      personaVerified: (json['personaVerified'] as num?)?.toInt(),
      personaVerifyLink: json['personaVerifyLink'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'birthdate': instance.birthdate,
      'hijriBirthdate': instance.hijriBirthdate,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'email': instance.email,
      'name': instance.name,
      'fullName': instance.fullName,
      'residencyNumber': instance.residencyNumber,
      'residencyStatus': instance.residencyStatus,
      'nationalityId': instance.nationalityId,
      'userNationality': instance.userNationality,
      'hasTax': instance.hasTax,
      'taxNumber': instance.taxNumber,
      'paymentWays': instance.paymentWays,
      'paymentWayValue': instance.paymentWayValue,
      'paymentType': instance.paymentType,
      'bankAccountNumber': instance.bankAccountNumber,
      'entryTime': instance.entryTime,
      'exitTime': instance.exitTime,
      'entryTimeFull': instance.entryTimeFull,
      'exitTimeFull': instance.exitTimeFull,
      'currency': instance.currency,
      'cancellationReturnPolicyId': instance.cancellationReturnPolicyId,
      'completedProfile': instance.completedProfile,
      'hasBookingConditions': instance.hasBookingConditions,
      'bookingConditionsText': instance.bookingConditionsText,
      'totalOrders': instance.totalOrders,
      'rates': instance.rates,
      'blocks': instance.blocks,
      'usageAgreementDate': instance.usageAgreementDate?.toIso8601String(),
      'usageAgreementDay': instance.usageAgreementDay,
      'ownerTotalOrders': instance.ownerTotalOrders,
      'requestsDebts': instance.requestsDebts,
      'ownerTotalFlats': instance.ownerTotalFlats,
      'ownerSales': instance.ownerSales,
      'ownerRates': instance.ownerRates,
      'ownerBlocks': instance.ownerBlocks,
      'isVerified': instance.isVerified,
      'registeredAt': instance.registeredAt?.toIso8601String(),
      'registeredYear': instance.registeredYear,
      'contactusRoom': instance.contactusRoom,
      'ownerWallet': instance.ownerWallet,
      'userWallet': instance.userWallet,
      'isManager': instance.isManager,
      'ownerId': instance.ownerId,
      'newNotifications': instance.newNotifications,
      'ownerNewNotifications': instance.ownerNewNotifications,
      'newChats': instance.newChats,
      'ownerNewChats': instance.ownerNewChats,
      'personaVerified': instance.personaVerified,
      'personaVerifyLink': instance.personaVerifyLink,
    };

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl();

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) =>
    <String, dynamic>{};
