// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'southwest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Southwest _$SouthwestFromJson(Map<String, dynamic> json) {
  return _Southwest.fromJson(json);
}

/// @nodoc
mixin _$Southwest {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SouthwestCopyWith<Southwest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SouthwestCopyWith<$Res> {
  factory $SouthwestCopyWith(Southwest value, $Res Function(Southwest) then) =
      _$SouthwestCopyWithImpl<$Res, Southwest>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$SouthwestCopyWithImpl<$Res, $Val extends Southwest>
    implements $SouthwestCopyWith<$Res> {
  _$SouthwestCopyWithImpl(this._value, this._then);

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
abstract class _$$SouthwestImplCopyWith<$Res>
    implements $SouthwestCopyWith<$Res> {
  factory _$$SouthwestImplCopyWith(
          _$SouthwestImpl value, $Res Function(_$SouthwestImpl) then) =
      __$$SouthwestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$SouthwestImplCopyWithImpl<$Res>
    extends _$SouthwestCopyWithImpl<$Res, _$SouthwestImpl>
    implements _$$SouthwestImplCopyWith<$Res> {
  __$$SouthwestImplCopyWithImpl(
      _$SouthwestImpl _value, $Res Function(_$SouthwestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$SouthwestImpl(
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
class _$SouthwestImpl implements _Southwest {
  _$SouthwestImpl({this.lat, this.lng});

  factory _$SouthwestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SouthwestImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Southwest(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SouthwestImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SouthwestImplCopyWith<_$SouthwestImpl> get copyWith =>
      __$$SouthwestImplCopyWithImpl<_$SouthwestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SouthwestImplToJson(
      this,
    );
  }
}

abstract class _Southwest implements Southwest {
  factory _Southwest({final double? lat, final double? lng}) = _$SouthwestImpl;

  factory _Southwest.fromJson(Map<String, dynamic> json) =
      _$SouthwestImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$SouthwestImplCopyWith<_$SouthwestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
