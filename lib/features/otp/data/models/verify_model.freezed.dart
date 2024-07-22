// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyModel _$VerifyModelFromJson(Map<String, dynamic> json) {
  return _VerifyModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyModel {
  Data? get data => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyModelCopyWith<VerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyModelCopyWith<$Res> {
  factory $VerifyModelCopyWith(
          VerifyModel value, $Res Function(VerifyModel) then) =
      _$VerifyModelCopyWithImpl<$Res, VerifyModel>;
  @useResult
  $Res call({Data? data, Errors? errors, String? message, bool? success});

  $DataCopyWith<$Res>? get data;
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$VerifyModelCopyWithImpl<$Res, $Val extends VerifyModel>
    implements $VerifyModelCopyWith<$Res> {
  _$VerifyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errors = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyModelImplCopyWith<$Res>
    implements $VerifyModelCopyWith<$Res> {
  factory _$$VerifyModelImplCopyWith(
          _$VerifyModelImpl value, $Res Function(_$VerifyModelImpl) then) =
      __$$VerifyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, Errors? errors, String? message, bool? success});

  @override
  $DataCopyWith<$Res>? get data;
  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$VerifyModelImplCopyWithImpl<$Res>
    extends _$VerifyModelCopyWithImpl<$Res, _$VerifyModelImpl>
    implements _$$VerifyModelImplCopyWith<$Res> {
  __$$VerifyModelImplCopyWithImpl(
      _$VerifyModelImpl _value, $Res Function(_$VerifyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errors = freezed,
    Object? message = freezed,
    Object? success = freezed,
  }) {
    return _then(_$VerifyModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyModelImpl implements _VerifyModel {
  const _$VerifyModelImpl({this.data, this.errors, this.message, this.success});

  factory _$VerifyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyModelImplFromJson(json);

  @override
  final Data? data;
  @override
  final Errors? errors;
  @override
  final String? message;
  @override
  final bool? success;

  @override
  String toString() {
    return 'VerifyModel(data: $data, errors: $errors, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, errors, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyModelImplCopyWith<_$VerifyModelImpl> get copyWith =>
      __$$VerifyModelImplCopyWithImpl<_$VerifyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyModel implements VerifyModel {
  const factory _VerifyModel(
      {final Data? data,
      final Errors? errors,
      final String? message,
      final bool? success}) = _$VerifyModelImpl;

  factory _VerifyModel.fromJson(Map<String, dynamic> json) =
      _$VerifyModelImpl.fromJson;

  @override
  Data? get data;
  @override
  Errors? get errors;
  @override
  String? get message;
  @override
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$VerifyModelImplCopyWith<_$VerifyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Profile? get profile => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({Profile? profile, String? token});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Profile? profile, String? token});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? token = freezed,
  }) {
    return _then(_$DataImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({this.profile, this.token});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Profile? profile;
  @override
  final String? token;

  @override
  String toString() {
    return 'Data(profile: $profile, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profile, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final Profile? profile, final String? token}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Profile? get profile;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  dynamic get hijriBirthdate => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get residencyNumber => throw _privateConstructorUsedError;
  String? get residencyStatus => throw _privateConstructorUsedError;
  int? get nationalityId => throw _privateConstructorUsedError;
  String? get userNationality => throw _privateConstructorUsedError;
  int? get hasTax => throw _privateConstructorUsedError;
  dynamic get taxNumber => throw _privateConstructorUsedError;
  String? get paymentWays => throw _privateConstructorUsedError;
  String? get paymentWayValue => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  String? get entryTime => throw _privateConstructorUsedError;
  String? get exitTime => throw _privateConstructorUsedError;
  String? get entryTimeFull => throw _privateConstructorUsedError;
  String? get exitTimeFull => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get cancellationReturnPolicyId => throw _privateConstructorUsedError;
  int? get completedProfile => throw _privateConstructorUsedError;
  int? get hasBookingConditions => throw _privateConstructorUsedError;
  dynamic get bookingConditionsText => throw _privateConstructorUsedError;
  int? get totalOrders => throw _privateConstructorUsedError;
  String? get rates => throw _privateConstructorUsedError;
  int? get blocks => throw _privateConstructorUsedError;
  DateTime? get usageAgreementDate => throw _privateConstructorUsedError;
  String? get usageAgreementDay => throw _privateConstructorUsedError;
  int? get ownerTotalOrders => throw _privateConstructorUsedError;
  int? get requestsDebts => throw _privateConstructorUsedError;
  int? get ownerTotalFlats => throw _privateConstructorUsedError;
  int? get ownerSales => throw _privateConstructorUsedError;
  String? get ownerRates => throw _privateConstructorUsedError;
  int? get ownerBlocks => throw _privateConstructorUsedError;
  int? get isVerified => throw _privateConstructorUsedError;
  DateTime? get registeredAt => throw _privateConstructorUsedError;
  String? get registeredYear => throw _privateConstructorUsedError;
  int? get contactusRoom => throw _privateConstructorUsedError;
  int? get ownerWallet => throw _privateConstructorUsedError;
  int? get userWallet => throw _privateConstructorUsedError;
  int? get isManager => throw _privateConstructorUsedError;
  dynamic get ownerId => throw _privateConstructorUsedError;
  int? get newNotifications => throw _privateConstructorUsedError;
  int? get ownerNewNotifications => throw _privateConstructorUsedError;
  int? get newChats => throw _privateConstructorUsedError;
  int? get ownerNewChats => throw _privateConstructorUsedError;
  int? get personaVerified => throw _privateConstructorUsedError;
  String? get personaVerifyLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {int? id,
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
      String? personaVerifyLink});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? birthdate = freezed,
    Object? hijriBirthdate = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? residencyNumber = freezed,
    Object? residencyStatus = freezed,
    Object? nationalityId = freezed,
    Object? userNationality = freezed,
    Object? hasTax = freezed,
    Object? taxNumber = freezed,
    Object? paymentWays = freezed,
    Object? paymentWayValue = freezed,
    Object? paymentType = freezed,
    Object? bankAccountNumber = freezed,
    Object? entryTime = freezed,
    Object? exitTime = freezed,
    Object? entryTimeFull = freezed,
    Object? exitTimeFull = freezed,
    Object? currency = freezed,
    Object? cancellationReturnPolicyId = freezed,
    Object? completedProfile = freezed,
    Object? hasBookingConditions = freezed,
    Object? bookingConditionsText = freezed,
    Object? totalOrders = freezed,
    Object? rates = freezed,
    Object? blocks = freezed,
    Object? usageAgreementDate = freezed,
    Object? usageAgreementDay = freezed,
    Object? ownerTotalOrders = freezed,
    Object? requestsDebts = freezed,
    Object? ownerTotalFlats = freezed,
    Object? ownerSales = freezed,
    Object? ownerRates = freezed,
    Object? ownerBlocks = freezed,
    Object? isVerified = freezed,
    Object? registeredAt = freezed,
    Object? registeredYear = freezed,
    Object? contactusRoom = freezed,
    Object? ownerWallet = freezed,
    Object? userWallet = freezed,
    Object? isManager = freezed,
    Object? ownerId = freezed,
    Object? newNotifications = freezed,
    Object? ownerNewNotifications = freezed,
    Object? newChats = freezed,
    Object? ownerNewChats = freezed,
    Object? personaVerified = freezed,
    Object? personaVerifyLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      hijriBirthdate: freezed == hijriBirthdate
          ? _value.hijriBirthdate
          : hijriBirthdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      residencyNumber: freezed == residencyNumber
          ? _value.residencyNumber
          : residencyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      residencyStatus: freezed == residencyStatus
          ? _value.residencyStatus
          : residencyStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityId: freezed == nationalityId
          ? _value.nationalityId
          : nationalityId // ignore: cast_nullable_to_non_nullable
              as int?,
      userNationality: freezed == userNationality
          ? _value.userNationality
          : userNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTax: freezed == hasTax
          ? _value.hasTax
          : hasTax // ignore: cast_nullable_to_non_nullable
              as int?,
      taxNumber: freezed == taxNumber
          ? _value.taxNumber
          : taxNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentWays: freezed == paymentWays
          ? _value.paymentWays
          : paymentWays // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentWayValue: freezed == paymentWayValue
          ? _value.paymentWayValue
          : paymentWayValue // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      entryTime: freezed == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as String?,
      entryTimeFull: freezed == entryTimeFull
          ? _value.entryTimeFull
          : entryTimeFull // ignore: cast_nullable_to_non_nullable
              as String?,
      exitTimeFull: freezed == exitTimeFull
          ? _value.exitTimeFull
          : exitTimeFull // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReturnPolicyId: freezed == cancellationReturnPolicyId
          ? _value.cancellationReturnPolicyId
          : cancellationReturnPolicyId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedProfile: freezed == completedProfile
          ? _value.completedProfile
          : completedProfile // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBookingConditions: freezed == hasBookingConditions
          ? _value.hasBookingConditions
          : hasBookingConditions // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingConditionsText: freezed == bookingConditionsText
          ? _value.bookingConditionsText
          : bookingConditionsText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalOrders: freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int?,
      usageAgreementDate: freezed == usageAgreementDate
          ? _value.usageAgreementDate
          : usageAgreementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageAgreementDay: freezed == usageAgreementDay
          ? _value.usageAgreementDay
          : usageAgreementDay // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerTotalOrders: freezed == ownerTotalOrders
          ? _value.ownerTotalOrders
          : ownerTotalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      requestsDebts: freezed == requestsDebts
          ? _value.requestsDebts
          : requestsDebts // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerTotalFlats: freezed == ownerTotalFlats
          ? _value.ownerTotalFlats
          : ownerTotalFlats // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerSales: freezed == ownerSales
          ? _value.ownerSales
          : ownerSales // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerRates: freezed == ownerRates
          ? _value.ownerRates
          : ownerRates // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerBlocks: freezed == ownerBlocks
          ? _value.ownerBlocks
          : ownerBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredAt: freezed == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registeredYear: freezed == registeredYear
          ? _value.registeredYear
          : registeredYear // ignore: cast_nullable_to_non_nullable
              as String?,
      contactusRoom: freezed == contactusRoom
          ? _value.contactusRoom
          : contactusRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerWallet: freezed == ownerWallet
          ? _value.ownerWallet
          : ownerWallet // ignore: cast_nullable_to_non_nullable
              as int?,
      userWallet: freezed == userWallet
          ? _value.userWallet
          : userWallet // ignore: cast_nullable_to_non_nullable
              as int?,
      isManager: freezed == isManager
          ? _value.isManager
          : isManager // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      newNotifications: freezed == newNotifications
          ? _value.newNotifications
          : newNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNewNotifications: freezed == ownerNewNotifications
          ? _value.ownerNewNotifications
          : ownerNewNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
      newChats: freezed == newChats
          ? _value.newChats
          : newChats // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNewChats: freezed == ownerNewChats
          ? _value.ownerNewChats
          : ownerNewChats // ignore: cast_nullable_to_non_nullable
              as int?,
      personaVerified: freezed == personaVerified
          ? _value.personaVerified
          : personaVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      personaVerifyLink: freezed == personaVerifyLink
          ? _value.personaVerifyLink
          : personaVerifyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? personaVerifyLink});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? birthdate = freezed,
    Object? hijriBirthdate = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? residencyNumber = freezed,
    Object? residencyStatus = freezed,
    Object? nationalityId = freezed,
    Object? userNationality = freezed,
    Object? hasTax = freezed,
    Object? taxNumber = freezed,
    Object? paymentWays = freezed,
    Object? paymentWayValue = freezed,
    Object? paymentType = freezed,
    Object? bankAccountNumber = freezed,
    Object? entryTime = freezed,
    Object? exitTime = freezed,
    Object? entryTimeFull = freezed,
    Object? exitTimeFull = freezed,
    Object? currency = freezed,
    Object? cancellationReturnPolicyId = freezed,
    Object? completedProfile = freezed,
    Object? hasBookingConditions = freezed,
    Object? bookingConditionsText = freezed,
    Object? totalOrders = freezed,
    Object? rates = freezed,
    Object? blocks = freezed,
    Object? usageAgreementDate = freezed,
    Object? usageAgreementDay = freezed,
    Object? ownerTotalOrders = freezed,
    Object? requestsDebts = freezed,
    Object? ownerTotalFlats = freezed,
    Object? ownerSales = freezed,
    Object? ownerRates = freezed,
    Object? ownerBlocks = freezed,
    Object? isVerified = freezed,
    Object? registeredAt = freezed,
    Object? registeredYear = freezed,
    Object? contactusRoom = freezed,
    Object? ownerWallet = freezed,
    Object? userWallet = freezed,
    Object? isManager = freezed,
    Object? ownerId = freezed,
    Object? newNotifications = freezed,
    Object? ownerNewNotifications = freezed,
    Object? newChats = freezed,
    Object? ownerNewChats = freezed,
    Object? personaVerified = freezed,
    Object? personaVerifyLink = freezed,
  }) {
    return _then(_$ProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      hijriBirthdate: freezed == hijriBirthdate
          ? _value.hijriBirthdate
          : hijriBirthdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      residencyNumber: freezed == residencyNumber
          ? _value.residencyNumber
          : residencyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      residencyStatus: freezed == residencyStatus
          ? _value.residencyStatus
          : residencyStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityId: freezed == nationalityId
          ? _value.nationalityId
          : nationalityId // ignore: cast_nullable_to_non_nullable
              as int?,
      userNationality: freezed == userNationality
          ? _value.userNationality
          : userNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTax: freezed == hasTax
          ? _value.hasTax
          : hasTax // ignore: cast_nullable_to_non_nullable
              as int?,
      taxNumber: freezed == taxNumber
          ? _value.taxNumber
          : taxNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentWays: freezed == paymentWays
          ? _value.paymentWays
          : paymentWays // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentWayValue: freezed == paymentWayValue
          ? _value.paymentWayValue
          : paymentWayValue // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      entryTime: freezed == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as String?,
      entryTimeFull: freezed == entryTimeFull
          ? _value.entryTimeFull
          : entryTimeFull // ignore: cast_nullable_to_non_nullable
              as String?,
      exitTimeFull: freezed == exitTimeFull
          ? _value.exitTimeFull
          : exitTimeFull // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReturnPolicyId: freezed == cancellationReturnPolicyId
          ? _value.cancellationReturnPolicyId
          : cancellationReturnPolicyId // ignore: cast_nullable_to_non_nullable
              as int?,
      completedProfile: freezed == completedProfile
          ? _value.completedProfile
          : completedProfile // ignore: cast_nullable_to_non_nullable
              as int?,
      hasBookingConditions: freezed == hasBookingConditions
          ? _value.hasBookingConditions
          : hasBookingConditions // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingConditionsText: freezed == bookingConditionsText
          ? _value.bookingConditionsText
          : bookingConditionsText // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalOrders: freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as String?,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as int?,
      usageAgreementDate: freezed == usageAgreementDate
          ? _value.usageAgreementDate
          : usageAgreementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageAgreementDay: freezed == usageAgreementDay
          ? _value.usageAgreementDay
          : usageAgreementDay // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerTotalOrders: freezed == ownerTotalOrders
          ? _value.ownerTotalOrders
          : ownerTotalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      requestsDebts: freezed == requestsDebts
          ? _value.requestsDebts
          : requestsDebts // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerTotalFlats: freezed == ownerTotalFlats
          ? _value.ownerTotalFlats
          : ownerTotalFlats // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerSales: freezed == ownerSales
          ? _value.ownerSales
          : ownerSales // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerRates: freezed == ownerRates
          ? _value.ownerRates
          : ownerRates // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerBlocks: freezed == ownerBlocks
          ? _value.ownerBlocks
          : ownerBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredAt: freezed == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registeredYear: freezed == registeredYear
          ? _value.registeredYear
          : registeredYear // ignore: cast_nullable_to_non_nullable
              as String?,
      contactusRoom: freezed == contactusRoom
          ? _value.contactusRoom
          : contactusRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerWallet: freezed == ownerWallet
          ? _value.ownerWallet
          : ownerWallet // ignore: cast_nullable_to_non_nullable
              as int?,
      userWallet: freezed == userWallet
          ? _value.userWallet
          : userWallet // ignore: cast_nullable_to_non_nullable
              as int?,
      isManager: freezed == isManager
          ? _value.isManager
          : isManager // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      newNotifications: freezed == newNotifications
          ? _value.newNotifications
          : newNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNewNotifications: freezed == ownerNewNotifications
          ? _value.ownerNewNotifications
          : ownerNewNotifications // ignore: cast_nullable_to_non_nullable
              as int?,
      newChats: freezed == newChats
          ? _value.newChats
          : newChats // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerNewChats: freezed == ownerNewChats
          ? _value.ownerNewChats
          : ownerNewChats // ignore: cast_nullable_to_non_nullable
              as int?,
      personaVerified: freezed == personaVerified
          ? _value.personaVerified
          : personaVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      personaVerifyLink: freezed == personaVerifyLink
          ? _value.personaVerifyLink
          : personaVerifyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {this.id,
      this.image,
      this.birthdate,
      this.hijriBirthdate,
      this.phone,
      this.countryCode,
      this.countryName,
      this.email,
      this.name,
      this.fullName,
      this.residencyNumber,
      this.residencyStatus,
      this.nationalityId,
      this.userNationality,
      this.hasTax,
      this.taxNumber,
      this.paymentWays,
      this.paymentWayValue,
      this.paymentType,
      this.bankAccountNumber,
      this.entryTime,
      this.exitTime,
      this.entryTimeFull,
      this.exitTimeFull,
      this.currency,
      this.cancellationReturnPolicyId,
      this.completedProfile,
      this.hasBookingConditions,
      this.bookingConditionsText,
      this.totalOrders,
      this.rates,
      this.blocks,
      this.usageAgreementDate,
      this.usageAgreementDay,
      this.ownerTotalOrders,
      this.requestsDebts,
      this.ownerTotalFlats,
      this.ownerSales,
      this.ownerRates,
      this.ownerBlocks,
      this.isVerified,
      this.registeredAt,
      this.registeredYear,
      this.contactusRoom,
      this.ownerWallet,
      this.userWallet,
      this.isManager,
      this.ownerId,
      this.newNotifications,
      this.ownerNewNotifications,
      this.newChats,
      this.ownerNewChats,
      this.personaVerified,
      this.personaVerifyLink});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? birthdate;
  @override
  final dynamic hijriBirthdate;
  @override
  final String? phone;
  @override
  final String? countryCode;
  @override
  final String? countryName;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? residencyNumber;
  @override
  final String? residencyStatus;
  @override
  final int? nationalityId;
  @override
  final String? userNationality;
  @override
  final int? hasTax;
  @override
  final dynamic taxNumber;
  @override
  final String? paymentWays;
  @override
  final String? paymentWayValue;
  @override
  final String? paymentType;
  @override
  final String? bankAccountNumber;
  @override
  final String? entryTime;
  @override
  final String? exitTime;
  @override
  final String? entryTimeFull;
  @override
  final String? exitTimeFull;
  @override
  final String? currency;
  @override
  final int? cancellationReturnPolicyId;
  @override
  final int? completedProfile;
  @override
  final int? hasBookingConditions;
  @override
  final dynamic bookingConditionsText;
  @override
  final int? totalOrders;
  @override
  final String? rates;
  @override
  final int? blocks;
  @override
  final DateTime? usageAgreementDate;
  @override
  final String? usageAgreementDay;
  @override
  final int? ownerTotalOrders;
  @override
  final int? requestsDebts;
  @override
  final int? ownerTotalFlats;
  @override
  final int? ownerSales;
  @override
  final String? ownerRates;
  @override
  final int? ownerBlocks;
  @override
  final int? isVerified;
  @override
  final DateTime? registeredAt;
  @override
  final String? registeredYear;
  @override
  final int? contactusRoom;
  @override
  final int? ownerWallet;
  @override
  final int? userWallet;
  @override
  final int? isManager;
  @override
  final dynamic ownerId;
  @override
  final int? newNotifications;
  @override
  final int? ownerNewNotifications;
  @override
  final int? newChats;
  @override
  final int? ownerNewChats;
  @override
  final int? personaVerified;
  @override
  final String? personaVerifyLink;

  @override
  String toString() {
    return 'Profile(id: $id, image: $image, birthdate: $birthdate, hijriBirthdate: $hijriBirthdate, phone: $phone, countryCode: $countryCode, countryName: $countryName, email: $email, name: $name, fullName: $fullName, residencyNumber: $residencyNumber, residencyStatus: $residencyStatus, nationalityId: $nationalityId, userNationality: $userNationality, hasTax: $hasTax, taxNumber: $taxNumber, paymentWays: $paymentWays, paymentWayValue: $paymentWayValue, paymentType: $paymentType, bankAccountNumber: $bankAccountNumber, entryTime: $entryTime, exitTime: $exitTime, entryTimeFull: $entryTimeFull, exitTimeFull: $exitTimeFull, currency: $currency, cancellationReturnPolicyId: $cancellationReturnPolicyId, completedProfile: $completedProfile, hasBookingConditions: $hasBookingConditions, bookingConditionsText: $bookingConditionsText, totalOrders: $totalOrders, rates: $rates, blocks: $blocks, usageAgreementDate: $usageAgreementDate, usageAgreementDay: $usageAgreementDay, ownerTotalOrders: $ownerTotalOrders, requestsDebts: $requestsDebts, ownerTotalFlats: $ownerTotalFlats, ownerSales: $ownerSales, ownerRates: $ownerRates, ownerBlocks: $ownerBlocks, isVerified: $isVerified, registeredAt: $registeredAt, registeredYear: $registeredYear, contactusRoom: $contactusRoom, ownerWallet: $ownerWallet, userWallet: $userWallet, isManager: $isManager, ownerId: $ownerId, newNotifications: $newNotifications, ownerNewNotifications: $ownerNewNotifications, newChats: $newChats, ownerNewChats: $ownerNewChats, personaVerified: $personaVerified, personaVerifyLink: $personaVerifyLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            const DeepCollectionEquality()
                .equals(other.hijriBirthdate, hijriBirthdate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.residencyNumber, residencyNumber) ||
                other.residencyNumber == residencyNumber) &&
            (identical(other.residencyStatus, residencyStatus) ||
                other.residencyStatus == residencyStatus) &&
            (identical(other.nationalityId, nationalityId) ||
                other.nationalityId == nationalityId) &&
            (identical(other.userNationality, userNationality) ||
                other.userNationality == userNationality) &&
            (identical(other.hasTax, hasTax) || other.hasTax == hasTax) &&
            const DeepCollectionEquality().equals(other.taxNumber, taxNumber) &&
            (identical(other.paymentWays, paymentWays) ||
                other.paymentWays == paymentWays) &&
            (identical(other.paymentWayValue, paymentWayValue) ||
                other.paymentWayValue == paymentWayValue) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.entryTimeFull, entryTimeFull) ||
                other.entryTimeFull == entryTimeFull) &&
            (identical(other.exitTimeFull, exitTimeFull) ||
                other.exitTimeFull == exitTimeFull) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.cancellationReturnPolicyId, cancellationReturnPolicyId) ||
                other.cancellationReturnPolicyId ==
                    cancellationReturnPolicyId) &&
            (identical(other.completedProfile, completedProfile) ||
                other.completedProfile == completedProfile) &&
            (identical(other.hasBookingConditions, hasBookingConditions) ||
                other.hasBookingConditions == hasBookingConditions) &&
            const DeepCollectionEquality()
                .equals(other.bookingConditionsText, bookingConditionsText) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.rates, rates) || other.rates == rates) &&
            (identical(other.blocks, blocks) || other.blocks == blocks) &&
            (identical(other.usageAgreementDate, usageAgreementDate) ||
                other.usageAgreementDate == usageAgreementDate) &&
            (identical(other.usageAgreementDay, usageAgreementDay) ||
                other.usageAgreementDay == usageAgreementDay) &&
            (identical(other.ownerTotalOrders, ownerTotalOrders) ||
                other.ownerTotalOrders == ownerTotalOrders) &&
            (identical(other.requestsDebts, requestsDebts) ||
                other.requestsDebts == requestsDebts) &&
            (identical(other.ownerTotalFlats, ownerTotalFlats) ||
                other.ownerTotalFlats == ownerTotalFlats) &&
            (identical(other.ownerSales, ownerSales) ||
                other.ownerSales == ownerSales) &&
            (identical(other.ownerRates, ownerRates) ||
                other.ownerRates == ownerRates) &&
            (identical(other.ownerBlocks, ownerBlocks) ||
                other.ownerBlocks == ownerBlocks) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.registeredYear, registeredYear) ||
                other.registeredYear == registeredYear) &&
            (identical(other.contactusRoom, contactusRoom) ||
                other.contactusRoom == contactusRoom) &&
            (identical(other.ownerWallet, ownerWallet) ||
                other.ownerWallet == ownerWallet) &&
            (identical(other.userWallet, userWallet) ||
                other.userWallet == userWallet) &&
            (identical(other.isManager, isManager) ||
                other.isManager == isManager) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            (identical(other.newNotifications, newNotifications) || other.newNotifications == newNotifications) &&
            (identical(other.ownerNewNotifications, ownerNewNotifications) || other.ownerNewNotifications == ownerNewNotifications) &&
            (identical(other.newChats, newChats) || other.newChats == newChats) &&
            (identical(other.ownerNewChats, ownerNewChats) || other.ownerNewChats == ownerNewChats) &&
            (identical(other.personaVerified, personaVerified) || other.personaVerified == personaVerified) &&
            (identical(other.personaVerifyLink, personaVerifyLink) || other.personaVerifyLink == personaVerifyLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        birthdate,
        const DeepCollectionEquality().hash(hijriBirthdate),
        phone,
        countryCode,
        countryName,
        email,
        name,
        fullName,
        residencyNumber,
        residencyStatus,
        nationalityId,
        userNationality,
        hasTax,
        const DeepCollectionEquality().hash(taxNumber),
        paymentWays,
        paymentWayValue,
        paymentType,
        bankAccountNumber,
        entryTime,
        exitTime,
        entryTimeFull,
        exitTimeFull,
        currency,
        cancellationReturnPolicyId,
        completedProfile,
        hasBookingConditions,
        const DeepCollectionEquality().hash(bookingConditionsText),
        totalOrders,
        rates,
        blocks,
        usageAgreementDate,
        usageAgreementDay,
        ownerTotalOrders,
        requestsDebts,
        ownerTotalFlats,
        ownerSales,
        ownerRates,
        ownerBlocks,
        isVerified,
        registeredAt,
        registeredYear,
        contactusRoom,
        ownerWallet,
        userWallet,
        isManager,
        const DeepCollectionEquality().hash(ownerId),
        newNotifications,
        ownerNewNotifications,
        newChats,
        ownerNewChats,
        personaVerified,
        personaVerifyLink
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {final int? id,
      final String? image,
      final String? birthdate,
      final dynamic hijriBirthdate,
      final String? phone,
      final String? countryCode,
      final String? countryName,
      final String? email,
      final String? name,
      final String? fullName,
      final String? residencyNumber,
      final String? residencyStatus,
      final int? nationalityId,
      final String? userNationality,
      final int? hasTax,
      final dynamic taxNumber,
      final String? paymentWays,
      final String? paymentWayValue,
      final String? paymentType,
      final String? bankAccountNumber,
      final String? entryTime,
      final String? exitTime,
      final String? entryTimeFull,
      final String? exitTimeFull,
      final String? currency,
      final int? cancellationReturnPolicyId,
      final int? completedProfile,
      final int? hasBookingConditions,
      final dynamic bookingConditionsText,
      final int? totalOrders,
      final String? rates,
      final int? blocks,
      final DateTime? usageAgreementDate,
      final String? usageAgreementDay,
      final int? ownerTotalOrders,
      final int? requestsDebts,
      final int? ownerTotalFlats,
      final int? ownerSales,
      final String? ownerRates,
      final int? ownerBlocks,
      final int? isVerified,
      final DateTime? registeredAt,
      final String? registeredYear,
      final int? contactusRoom,
      final int? ownerWallet,
      final int? userWallet,
      final int? isManager,
      final dynamic ownerId,
      final int? newNotifications,
      final int? ownerNewNotifications,
      final int? newChats,
      final int? ownerNewChats,
      final int? personaVerified,
      final String? personaVerifyLink}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get birthdate;
  @override
  dynamic get hijriBirthdate;
  @override
  String? get phone;
  @override
  String? get countryCode;
  @override
  String? get countryName;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get residencyNumber;
  @override
  String? get residencyStatus;
  @override
  int? get nationalityId;
  @override
  String? get userNationality;
  @override
  int? get hasTax;
  @override
  dynamic get taxNumber;
  @override
  String? get paymentWays;
  @override
  String? get paymentWayValue;
  @override
  String? get paymentType;
  @override
  String? get bankAccountNumber;
  @override
  String? get entryTime;
  @override
  String? get exitTime;
  @override
  String? get entryTimeFull;
  @override
  String? get exitTimeFull;
  @override
  String? get currency;
  @override
  int? get cancellationReturnPolicyId;
  @override
  int? get completedProfile;
  @override
  int? get hasBookingConditions;
  @override
  dynamic get bookingConditionsText;
  @override
  int? get totalOrders;
  @override
  String? get rates;
  @override
  int? get blocks;
  @override
  DateTime? get usageAgreementDate;
  @override
  String? get usageAgreementDay;
  @override
  int? get ownerTotalOrders;
  @override
  int? get requestsDebts;
  @override
  int? get ownerTotalFlats;
  @override
  int? get ownerSales;
  @override
  String? get ownerRates;
  @override
  int? get ownerBlocks;
  @override
  int? get isVerified;
  @override
  DateTime? get registeredAt;
  @override
  String? get registeredYear;
  @override
  int? get contactusRoom;
  @override
  int? get ownerWallet;
  @override
  int? get userWallet;
  @override
  int? get isManager;
  @override
  dynamic get ownerId;
  @override
  int? get newNotifications;
  @override
  int? get ownerNewNotifications;
  @override
  int? get newChats;
  @override
  int? get ownerNewChats;
  @override
  int? get personaVerified;
  @override
  String? get personaVerifyLink;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
mixin _$Errors {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res, Errors>;
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res, $Val extends Errors>
    implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorsImplCopyWith<$Res> {
  factory _$$ErrorsImplCopyWith(
          _$ErrorsImpl value, $Res Function(_$ErrorsImpl) then) =
      __$$ErrorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorsImplCopyWithImpl<$Res>
    extends _$ErrorsCopyWithImpl<$Res, _$ErrorsImpl>
    implements _$$ErrorsImplCopyWith<$Res> {
  __$$ErrorsImplCopyWithImpl(
      _$ErrorsImpl _value, $Res Function(_$ErrorsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ErrorsImpl implements _Errors {
  const _$ErrorsImpl();

  factory _$ErrorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorsImplFromJson(json);

  @override
  String toString() {
    return 'Errors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorsImplToJson(
      this,
    );
  }
}

abstract class _Errors implements Errors {
  const factory _Errors() = _$ErrorsImpl;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$ErrorsImpl.fromJson;
}
