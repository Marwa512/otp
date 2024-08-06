import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_component.dart';
import 'geometry.dart';
import 'photo.dart';

part 'place_detail.freezed.dart';
part 'place_detail.g.dart';

@freezed
class PlaceDetail with _$PlaceDetail {
  factory PlaceDetail({
    @JsonKey(name: 'address_components')
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
    String? website,
  }) = _PlaceDetail;

  factory PlaceDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailFromJson(json);
}
