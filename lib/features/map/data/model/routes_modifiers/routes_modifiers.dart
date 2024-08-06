import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_modifiers.freezed.dart';
part 'routes_modifiers.g.dart';

@freezed
class RoutesModifiers with _$RoutesModifiers {
  factory RoutesModifiers({
    bool? avoidTolls,
    bool? avoidHighways,
    bool? avoidFerries,
  }) = _RoutesModifiers;

  factory RoutesModifiers.fromJson(Map<String, dynamic> json) =>
      _$RoutesModifiersFromJson(json);
}
