// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polyline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Polyline _$PolylineFromJson(Map<String, dynamic> json) {
  return _Polyline.fromJson(json);
}

/// @nodoc
mixin _$Polyline {
  String? get encodedPolyline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolylineCopyWith<Polyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolylineCopyWith<$Res> {
  factory $PolylineCopyWith(Polyline value, $Res Function(Polyline) then) =
      _$PolylineCopyWithImpl<$Res, Polyline>;
  @useResult
  $Res call({String? encodedPolyline});
}

/// @nodoc
class _$PolylineCopyWithImpl<$Res, $Val extends Polyline>
    implements $PolylineCopyWith<$Res> {
  _$PolylineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedPolyline = freezed,
  }) {
    return _then(_value.copyWith(
      encodedPolyline: freezed == encodedPolyline
          ? _value.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolylineImplCopyWith<$Res>
    implements $PolylineCopyWith<$Res> {
  factory _$$PolylineImplCopyWith(
          _$PolylineImpl value, $Res Function(_$PolylineImpl) then) =
      __$$PolylineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? encodedPolyline});
}

/// @nodoc
class __$$PolylineImplCopyWithImpl<$Res>
    extends _$PolylineCopyWithImpl<$Res, _$PolylineImpl>
    implements _$$PolylineImplCopyWith<$Res> {
  __$$PolylineImplCopyWithImpl(
      _$PolylineImpl _value, $Res Function(_$PolylineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedPolyline = freezed,
  }) {
    return _then(_$PolylineImpl(
      encodedPolyline: freezed == encodedPolyline
          ? _value.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolylineImpl implements _Polyline {
  _$PolylineImpl({this.encodedPolyline});

  factory _$PolylineImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolylineImplFromJson(json);

  @override
  final String? encodedPolyline;

  @override
  String toString() {
    return 'Polyline(encodedPolyline: $encodedPolyline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolylineImpl &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, encodedPolyline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolylineImplCopyWith<_$PolylineImpl> get copyWith =>
      __$$PolylineImplCopyWithImpl<_$PolylineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolylineImplToJson(
      this,
    );
  }
}

abstract class _Polyline implements Polyline {
  factory _Polyline({final String? encodedPolyline}) = _$PolylineImpl;

  factory _Polyline.fromJson(Map<String, dynamic> json) =
      _$PolylineImpl.fromJson;

  @override
  String? get encodedPolyline;
  @override
  @JsonKey(ignore: true)
  _$$PolylineImplCopyWith<_$PolylineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
