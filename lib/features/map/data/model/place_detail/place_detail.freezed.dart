// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDetail _$PlaceDetailFromJson(Map<String, dynamic> json) {
  return _PlaceDetail.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetail {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'adr_address')
  String? get adrAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset')
  int? get utcOffset => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailCopyWith<PlaceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailCopyWith<$Res> {
  factory $PlaceDetailCopyWith(
          PlaceDetail value, $Res Function(PlaceDetail) then) =
      _$PlaceDetailCopyWithImpl<$Res, PlaceDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      String? name,
      List<Photo>? photos,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      List<String>? types,
      String? url,
      @JsonKey(name: 'utc_offset') int? utcOffset,
      String? website});

  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$PlaceDetailCopyWithImpl<$Res, $Val extends PlaceDetail>
    implements $PlaceDetailCopyWith<$Res> {
  _$PlaceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? name = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? utcOffset = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _value.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      utcOffset: freezed == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceDetailImplCopyWith<$Res>
    implements $PlaceDetailCopyWith<$Res> {
  factory _$$PlaceDetailImplCopyWith(
          _$PlaceDetailImpl value, $Res Function(_$PlaceDetailImpl) then) =
      __$$PlaceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      String? name,
      List<Photo>? photos,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      List<String>? types,
      String? url,
      @JsonKey(name: 'utc_offset') int? utcOffset,
      String? website});

  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$PlaceDetailImplCopyWithImpl<$Res>
    extends _$PlaceDetailCopyWithImpl<$Res, _$PlaceDetailImpl>
    implements _$$PlaceDetailImplCopyWith<$Res> {
  __$$PlaceDetailImplCopyWithImpl(
      _$PlaceDetailImpl _value, $Res Function(_$PlaceDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? name = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? utcOffset = freezed,
    Object? website = freezed,
  }) {
    return _then(_$PlaceDetailImpl(
      addressComponents: freezed == addressComponents
          ? _value._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _value.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      utcOffset: freezed == utcOffset
          ? _value.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDetailImpl implements _PlaceDetail {
  _$PlaceDetailImpl(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') this.adrAddress,
      @JsonKey(name: 'formatted_address') this.formattedAddress,
      this.geometry,
      this.icon,
      @JsonKey(name: 'icon_background_color') this.iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') this.iconMaskBaseUri,
      this.name,
      final List<Photo>? photos,
      @JsonKey(name: 'place_id') this.placeId,
      this.reference,
      final List<String>? types,
      this.url,
      @JsonKey(name: 'utc_offset') this.utcOffset,
      this.website})
      : _addressComponents = addressComponents,
        _photos = photos,
        _types = types;

  factory _$PlaceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDetailImplFromJson(json);

  final List<AddressComponent>? _addressComponents;
  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'adr_address')
  final String? adrAddress;
  @override
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  @override
  final Geometry? geometry;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'icon_background_color')
  final String? iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  final String? iconMaskBaseUri;
  @override
  final String? name;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  @JsonKey(name: 'utc_offset')
  final int? utcOffset;
  @override
  final String? website;

  @override
  String toString() {
    return 'PlaceDetail(addressComponents: $addressComponents, adrAddress: $adrAddress, formattedAddress: $formattedAddress, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, name: $name, photos: $photos, placeId: $placeId, reference: $reference, types: $types, url: $url, utcOffset: $utcOffset, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailImpl &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.adrAddress, adrAddress) ||
                other.adrAddress == adrAddress) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackgroundColor, iconBackgroundColor) ||
                other.iconBackgroundColor == iconBackgroundColor) &&
            (identical(other.iconMaskBaseUri, iconMaskBaseUri) ||
                other.iconMaskBaseUri == iconMaskBaseUri) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressComponents),
      adrAddress,
      formattedAddress,
      geometry,
      icon,
      iconBackgroundColor,
      iconMaskBaseUri,
      name,
      const DeepCollectionEquality().hash(_photos),
      placeId,
      reference,
      const DeepCollectionEquality().hash(_types),
      url,
      utcOffset,
      website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailImplCopyWith<_$PlaceDetailImpl> get copyWith =>
      __$$PlaceDetailImplCopyWithImpl<_$PlaceDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDetailImplToJson(
      this,
    );
  }
}

abstract class _PlaceDetail implements PlaceDetail {
  factory _PlaceDetail(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') final String? adrAddress,
      @JsonKey(name: 'formatted_address') final String? formattedAddress,
      final Geometry? geometry,
      final String? icon,
      @JsonKey(name: 'icon_background_color') final String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') final String? iconMaskBaseUri,
      final String? name,
      final List<Photo>? photos,
      @JsonKey(name: 'place_id') final String? placeId,
      final String? reference,
      final List<String>? types,
      final String? url,
      @JsonKey(name: 'utc_offset') final int? utcOffset,
      final String? website}) = _$PlaceDetailImpl;

  factory _PlaceDetail.fromJson(Map<String, dynamic> json) =
      _$PlaceDetailImpl.fromJson;

  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents;
  @override
  @JsonKey(name: 'adr_address')
  String? get adrAddress;
  @override
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress;
  @override
  Geometry? get geometry;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor;
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri;
  @override
  String? get name;
  @override
  List<Photo>? get photos;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get reference;
  @override
  List<String>? get types;
  @override
  String? get url;
  @override
  @JsonKey(name: 'utc_offset')
  int? get utcOffset;
  @override
  String? get website;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailImplCopyWith<_$PlaceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
