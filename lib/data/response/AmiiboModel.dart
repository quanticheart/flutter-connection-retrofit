import 'package:json_annotation/json_annotation.dart';
import 'AmiiboRelease.dart';

part 'AmiiboModel.g.dart';

@JsonSerializable()
class AmiiboModel {
  AmiiboModel({
    required this.amiiboSeries,
    required this.character,
    required this.gameSeries,
    required this.head,
    required this.image,
    required this.name
  });

  String? amiiboSeries;
  String? character;
  String? gameSeries;
  String? head;
  String? image;
  String? name;
  AmiiboRelease? release;
  String? tail;
  String? type;

  factory AmiiboModel.fromJson(Map<String, dynamic> json) =>
      _$AmiiboModelFromJson(json);

  Map<String, dynamic> toJson() => _$AmiiboModelToJson(this);

  @override
  String toString() {
    return 'AmiiboModel{amiiboSeries: $amiiboSeries, character: $character, gameSeries: $gameSeries, head: $head, image: $image, name: $name, release: $release, tail: $tail, type: $type}';
  }
}
