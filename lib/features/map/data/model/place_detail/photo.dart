import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    int? height,
    @JsonKey(name: 'html_attributions') List<String>? htmlAttributions,
    @JsonKey(name: 'photo_reference') String? photoReference,
    int? width,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
