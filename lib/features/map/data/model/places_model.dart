import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_model.freezed.dart';
part 'places_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    String? description,
    List<MatchedSubstring>? matchedSubstrings,
    String? placeId,
    String? reference,
    StructuredFormatting? structuredFormatting,
    List<Term>? terms,
    List<String>? types,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}

@freezed
class MatchedSubstring with _$MatchedSubstring {
  const MatchedSubstring._(); // Private constructor

  const factory MatchedSubstring({
    int? length,
    int? offset,
  }) = _MatchedSubstring;

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringFromJson(json);
}

@freezed
class StructuredFormatting with _$StructuredFormatting {
  const StructuredFormatting._(); // Private constructor

  const factory StructuredFormatting({
    String? mainText,
    List<MainTextMatchedSubstring>? mainTextMatchedSubstrings,
    String? secondaryText,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}

@freezed
class MainTextMatchedSubstring with _$MainTextMatchedSubstring {
  const MainTextMatchedSubstring._(); // Private constructor

  const factory MainTextMatchedSubstring({
    int? length,
    int? offset,
  }) = _MainTextMatchedSubstring;

  factory MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MainTextMatchedSubstringFromJson(json);
}

@freezed
class Term with _$Term {
  const Term._(); // Private constructor

  const factory Term({
    int? offset,
    String? value,
  }) = _Term;

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
}
