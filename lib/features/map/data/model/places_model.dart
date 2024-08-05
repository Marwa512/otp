import 'package:freezed_annotation/freezed_annotation.dart';
part 'places_model.freezed.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    @JsonKey(name: "predictions") List<Prediction>? predictions,
    @JsonKey(name: "status") String? status,
  }) = _PlaceModel;
}

@freezed
class Prediction with _$Prediction {
  const factory Prediction({
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "matched_substrings")
    List<MatchedSubstring>? matchedSubstrings,
    @JsonKey(name: "place_id") String? placeId,
    @JsonKey(name: "reference") String? reference,
    @JsonKey(name: "structured_formatting")
    StructuredFormatting? structuredFormatting,
    @JsonKey(name: "terms") List<Term>? terms,
    @JsonKey(name: "types") List<String>? types,
  }) = _Prediction;
}

@freezed
class MatchedSubstring with _$MatchedSubstring {
  const factory MatchedSubstring({
    @JsonKey(name: "length") int? length,
    @JsonKey(name: "offset") int? offset,
  }) = _MatchedSubstring;
}

@freezed
class StructuredFormatting with _$StructuredFormatting {
  const factory StructuredFormatting({
    @JsonKey(name: "main_text") String? mainText,
    @JsonKey(name: "main_text_matched_substrings")
    List<MatchedSubstring>? mainTextMatchedSubstrings,
    @JsonKey(name: "secondary_text") String? secondaryText,
  }) = _StructuredFormatting;
}

@freezed
class Term with _$Term {
  const factory Term({
    @JsonKey(name: "offset") int? offset,
    @JsonKey(name: "value") String? value,
  }) = _Term;
}
