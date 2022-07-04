import 'package:connection_retrofit/data/response/AmiiboModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AmiiboListModel.g.dart';

@JsonSerializable()
class AmiiboListModel {
  AmiiboListModel({
    required this.amiibo,
  });

  List<AmiiboModel> amiibo;

  factory AmiiboListModel.fromJson(Map<String, dynamic> json) =>
      _$AmiiboListModelFromJson(json);

  Map<String, dynamic> toJson() => _$AmiiboListModelToJson(this);

  @override
  String toString() {
    return 'AmiiboListModel{amiibo: $amiibo}';
  }
}
