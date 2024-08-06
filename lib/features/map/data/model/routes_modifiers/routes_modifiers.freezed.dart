// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_modifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutesModifiers _$RoutesModifiersFromJson(Map<String, dynamic> json) {
  return _RoutesModifiers.fromJson(json);
}

/// @nodoc
mixin _$RoutesModifiers {
  bool? get avoidTolls => throw _privateConstructorUsedError;
  bool? get avoidHighways => throw _privateConstructorUsedError;
  bool? get avoidFerries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesModifiersCopyWith<RoutesModifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesModifiersCopyWith<$Res> {
  factory $RoutesModifiersCopyWith(
          RoutesModifiers value, $Res Function(RoutesModifiers) then) =
      _$RoutesModifiersCopyWithImpl<$Res, RoutesModifiers>;
  @useResult
  $Res call({bool? avoidTolls, bool? avoidHighways, bool? avoidFerries});
}

/// @nodoc
class _$RoutesModifiersCopyWithImpl<$Res, $Val extends RoutesModifiers>
    implements $RoutesModifiersCopyWith<$Res> {
  _$RoutesModifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avoidTolls = freezed,
    Object? avoidHighways = freezed,
    Object? avoidFerries = freezed,
  }) {
    return _then(_value.copyWith(
      avoidTolls: freezed == avoidTolls
          ? _value.avoidTolls
          : avoidTolls // ignore: cast_nullable_to_non_nullable
              as bool?,
      avoidHighways: freezed == avoidHighways
          ? _value.avoidHighways
          : avoidHighways // ignore: cast_nullable_to_non_nullable
              as bool?,
      avoidFerries: freezed == avoidFerries
          ? _value.avoidFerries
          : avoidFerries // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutesModifiersImplCopyWith<$Res>
    implements $RoutesModifiersCopyWith<$Res> {
  factory _$$RoutesModifiersImplCopyWith(_$RoutesModifiersImpl value,
          $Res Function(_$RoutesModifiersImpl) then) =
      __$$RoutesModifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? avoidTolls, bool? avoidHighways, bool? avoidFerries});
}

/// @nodoc
class __$$RoutesModifiersImplCopyWithImpl<$Res>
    extends _$RoutesModifiersCopyWithImpl<$Res, _$RoutesModifiersImpl>
    implements _$$RoutesModifiersImplCopyWith<$Res> {
  __$$RoutesModifiersImplCopyWithImpl(
      _$RoutesModifiersImpl _value, $Res Function(_$RoutesModifiersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avoidTolls = freezed,
    Object? avoidHighways = freezed,
    Object? avoidFerries = freezed,
  }) {
    return _then(_$RoutesModifiersImpl(
      avoidTolls: freezed == avoidTolls
          ? _value.avoidTolls
          : avoidTolls // ignore: cast_nullable_to_non_nullable
              as bool?,
      avoidHighways: freezed == avoidHighways
          ? _value.avoidHighways
          : avoidHighways // ignore: cast_nullable_to_non_nullable
              as bool?,
      avoidFerries: freezed == avoidFerries
          ? _value.avoidFerries
          : avoidFerries // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutesModifiersImpl implements _RoutesModifiers {
  _$RoutesModifiersImpl(
      {this.avoidTolls, this.avoidHighways, this.avoidFerries});

  factory _$RoutesModifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutesModifiersImplFromJson(json);

  @override
  final bool? avoidTolls;
  @override
  final bool? avoidHighways;
  @override
  final bool? avoidFerries;

  @override
  String toString() {
    return 'RoutesModifiers(avoidTolls: $avoidTolls, avoidHighways: $avoidHighways, avoidFerries: $avoidFerries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutesModifiersImpl &&
            (identical(other.avoidTolls, avoidTolls) ||
                other.avoidTolls == avoidTolls) &&
            (identical(other.avoidHighways, avoidHighways) ||
                other.avoidHighways == avoidHighways) &&
            (identical(other.avoidFerries, avoidFerries) ||
                other.avoidFerries == avoidFerries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, avoidTolls, avoidHighways, avoidFerries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutesModifiersImplCopyWith<_$RoutesModifiersImpl> get copyWith =>
      __$$RoutesModifiersImplCopyWithImpl<_$RoutesModifiersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutesModifiersImplToJson(
      this,
    );
  }
}

abstract class _RoutesModifiers implements RoutesModifiers {
  factory _RoutesModifiers(
      {final bool? avoidTolls,
      final bool? avoidHighways,
      final bool? avoidFerries}) = _$RoutesModifiersImpl;

  factory _RoutesModifiers.fromJson(Map<String, dynamic> json) =
      _$RoutesModifiersImpl.fromJson;

  @override
  bool? get avoidTolls;
  @override
  bool? get avoidHighways;
  @override
  bool? get avoidFerries;
  @override
  @JsonKey(ignore: true)
  _$$RoutesModifiersImplCopyWith<_$RoutesModifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
