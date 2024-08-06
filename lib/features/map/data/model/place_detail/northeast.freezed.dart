// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'northeast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Northeast _$NortheastFromJson(Map<String, dynamic> json) {
  return _Northeast.fromJson(json);
}

/// @nodoc
mixin _$Northeast {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NortheastCopyWith<Northeast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NortheastCopyWith<$Res> {
  factory $NortheastCopyWith(Northeast value, $Res Function(Northeast) then) =
      _$NortheastCopyWithImpl<$Res, Northeast>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$NortheastCopyWithImpl<$Res, $Val extends Northeast>
    implements $NortheastCopyWith<$Res> {
  _$NortheastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NortheastImplCopyWith<$Res>
    implements $NortheastCopyWith<$Res> {
  factory _$$NortheastImplCopyWith(
          _$NortheastImpl value, $Res Function(_$NortheastImpl) then) =
      __$$NortheastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$NortheastImplCopyWithImpl<$Res>
    extends _$NortheastCopyWithImpl<$Res, _$NortheastImpl>
    implements _$$NortheastImplCopyWith<$Res> {
  __$$NortheastImplCopyWithImpl(
      _$NortheastImpl _value, $Res Function(_$NortheastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$NortheastImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NortheastImpl implements _Northeast {
  _$NortheastImpl({this.lat, this.lng});

  factory _$NortheastImpl.fromJson(Map<String, dynamic> json) =>
      _$$NortheastImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Northeast(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NortheastImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NortheastImplCopyWith<_$NortheastImpl> get copyWith =>
      __$$NortheastImplCopyWithImpl<_$NortheastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NortheastImplToJson(
      this,
    );
  }
}

abstract class _Northeast implements Northeast {
  factory _Northeast({final double? lat, final double? lng}) = _$NortheastImpl;

  factory _Northeast.fromJson(Map<String, dynamic> json) =
      _$NortheastImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$NortheastImplCopyWith<_$NortheastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
