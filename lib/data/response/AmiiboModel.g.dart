// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AmiiboModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmiiboModel _$AmiiboModelFromJson(Map<String, dynamic> json) => AmiiboModel(
      amiiboSeries: json['amiiboSeries'] as String?,
      character: json['character'] as String?,
      gameSeries: json['gameSeries'] as String?,
      head: json['head'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
    )
      ..release = json['release'] == null
          ? null
          : AmiiboRelease.fromJson(json['release'] as Map<String, dynamic>)
      ..tail = json['tail'] as String?
      ..type = json['type'] as String?;

Map<String, dynamic> _$AmiiboModelToJson(AmiiboModel instance) =>
    <String, dynamic>{
      'amiiboSeries': instance.amiiboSeries,
      'character': instance.character,
      'gameSeries': instance.gameSeries,
      'head': instance.head,
      'image': instance.image,
      'name': instance.name,
      'release': instance.release,
      'tail': instance.tail,
      'type': instance.type,
    };
