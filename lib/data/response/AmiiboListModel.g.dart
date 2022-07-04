// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AmiiboListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmiiboListModel _$AmiiboListModelFromJson(Map<String, dynamic> json) =>
    AmiiboListModel(
      amiibo: (json['amiibo'] as List<dynamic>)
          .map((e) => AmiiboModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AmiiboListModelToJson(AmiiboListModel instance) =>
    <String, dynamic>{
      'amiibo': instance.amiibo,
    };
