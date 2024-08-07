// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationInfoModel _$LocationInfoModelFromJson(Map<String, dynamic> json) {
  return _LocationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LocationInfoModel {
  LocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationInfoModelCopyWith<LocationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInfoModelCopyWith<$Res> {
  factory $LocationInfoModelCopyWith(
          LocationInfoModel value, $Res Function(LocationInfoModel) then) =
      _$LocationInfoModelCopyWithImpl<$Res, LocationInfoModel>;
  @useResult
  $Res call({LocationModel? location});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$LocationInfoModelCopyWithImpl<$Res, $Val extends LocationInfoModel>
    implements $LocationInfoModelCopyWith<$Res> {
  _$LocationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationInfoModelImplCopyWith<$Res>
    implements $LocationInfoModelCopyWith<$Res> {
  factory _$$LocationInfoModelImplCopyWith(_$LocationInfoModelImpl value,
          $Res Function(_$LocationInfoModelImpl) then) =
      __$$LocationInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationModel? location});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$LocationInfoModelImplCopyWithImpl<$Res>
    extends _$LocationInfoModelCopyWithImpl<$Res, _$LocationInfoModelImpl>
    implements _$$LocationInfoModelImplCopyWith<$Res> {
  __$$LocationInfoModelImplCopyWithImpl(_$LocationInfoModelImpl _value,
      $Res Function(_$LocationInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$LocationInfoModelImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationInfoModelImpl implements _LocationInfoModel {
  _$LocationInfoModelImpl({this.location});

  factory _$LocationInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationInfoModelImplFromJson(json);

  @override
  final LocationModel? location;

  @override
  String toString() {
    return 'LocationInfoModel(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInfoModelImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInfoModelImplCopyWith<_$LocationInfoModelImpl> get copyWith =>
      __$$LocationInfoModelImplCopyWithImpl<_$LocationInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LocationInfoModel implements LocationInfoModel {
  factory _LocationInfoModel({final LocationModel? location}) =
      _$LocationInfoModelImpl;

  factory _LocationInfoModel.fromJson(Map<String, dynamic> json) =
      _$LocationInfoModelImpl.fromJson;

  @override
  LocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$LocationInfoModelImplCopyWith<_$LocationInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
