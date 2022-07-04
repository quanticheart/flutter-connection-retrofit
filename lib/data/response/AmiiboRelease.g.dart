// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AmiiboRelease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmiiboRelease _$AmiiboReleaseFromJson(Map<String, dynamic> json) =>
    AmiiboRelease(
      au: json['au'] == null ? null : DateTime.parse(json['au'] as String),
      eu: json['eu'] == null ? null : DateTime.parse(json['eu'] as String),
      jp: json['jp'] == null ? null : DateTime.parse(json['jp'] as String),
      na: json['na'] == null ? null : DateTime.parse(json['na'] as String),
    );

Map<String, dynamic> _$AmiiboReleaseToJson(AmiiboRelease instance) =>
    <String, dynamic>{
      'au': instance.au?.toIso8601String(),
      'eu': instance.eu?.toIso8601String(),
      'jp': instance.jp?.toIso8601String(),
      'na': instance.na?.toIso8601String(),
    };
