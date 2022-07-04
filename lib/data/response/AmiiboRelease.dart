import 'package:json_annotation/json_annotation.dart';

part 'AmiiboRelease.g.dart';

@JsonSerializable()
class AmiiboRelease {
  AmiiboRelease({
    required this.au,
    required this.eu,
    required this.jp,
    required this.na,
  });

  DateTime? au;
  DateTime? eu;
  DateTime? jp;
  DateTime? na;

  factory AmiiboRelease.fromJson(Map<String, dynamic> json) =>
      _$AmiiboReleaseFromJson(json);

  Map<String, dynamic> toJson() => _$AmiiboReleaseToJson(this);

  @override
  String toString() {
    return 'AmiiboRelease{au: $au, eu: $eu, jp: $jp, na: $na}';
  }
}
