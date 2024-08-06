// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutesModel _$RoutesModelFromJson(Map<String, dynamic> json) {
  return _RoutesModel.fromJson(json);
}

/// @nodoc
mixin _$RoutesModel {
  int? get distanceMeters => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  Polyline? get polyline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesModelCopyWith<RoutesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesModelCopyWith<$Res> {
  factory $RoutesModelCopyWith(
          RoutesModel value, $Res Function(RoutesModel) then) =
      _$RoutesModelCopyWithImpl<$Res, RoutesModel>;
  @useResult
  $Res call({int? distanceMeters, String? duration, Polyline? polyline});

  $PolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class _$RoutesModelCopyWithImpl<$Res, $Val extends RoutesModel>
    implements $RoutesModelCopyWith<$Res> {
  _$RoutesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = freezed,
    Object? duration = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_value.copyWith(
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolylineCopyWith<$Res>? get polyline {
    if (_value.polyline == null) {
      return null;
    }

    return $PolylineCopyWith<$Res>(_value.polyline!, (value) {
      return _then(_value.copyWith(polyline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutesModelImplCopyWith<$Res>
    implements $RoutesModelCopyWith<$Res> {
  factory _$$RoutesModelImplCopyWith(
          _$RoutesModelImpl value, $Res Function(_$RoutesModelImpl) then) =
      __$$RoutesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? distanceMeters, String? duration, Polyline? polyline});

  @override
  $PolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class __$$RoutesModelImplCopyWithImpl<$Res>
    extends _$RoutesModelCopyWithImpl<$Res, _$RoutesModelImpl>
    implements _$$RoutesModelImplCopyWith<$Res> {
  __$$RoutesModelImplCopyWithImpl(
      _$RoutesModelImpl _value, $Res Function(_$RoutesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = freezed,
    Object? duration = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_$RoutesModelImpl(
      distanceMeters: freezed == distanceMeters
          ? _value.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutesModelImpl implements _RoutesModel {
  _$RoutesModelImpl({this.distanceMeters, this.duration, this.polyline});

  factory _$RoutesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutesModelImplFromJson(json);

  @override
  final int? distanceMeters;
  @override
  final String? duration;
  @override
  final Polyline? polyline;

  @override
  String toString() {
    return 'RoutesModel(distanceMeters: $distanceMeters, duration: $duration, polyline: $polyline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutesModelImpl &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceMeters, duration, polyline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutesModelImplCopyWith<_$RoutesModelImpl> get copyWith =>
      __$$RoutesModelImplCopyWithImpl<_$RoutesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutesModelImplToJson(
      this,
    );
  }
}

abstract class _RoutesModel implements RoutesModel {
  factory _RoutesModel(
      {final int? distanceMeters,
      final String? duration,
      final Polyline? polyline}) = _$RoutesModelImpl;

  factory _RoutesModel.fromJson(Map<String, dynamic> json) =
      _$RoutesModelImpl.fromJson;

  @override
  int? get distanceMeters;
  @override
  String? get duration;
  @override
  Polyline? get polyline;
  @override
  @JsonKey(ignore: true)
  _$$RoutesModelImplCopyWith<_$RoutesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
