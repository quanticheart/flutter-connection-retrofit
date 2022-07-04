import 'package:connection_retrofit/core/network/extentions/ApiExt.dart';
import 'package:connection_retrofit/data/response/AmiiboListModel.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:logger/logger.dart';

part 'AmiiboEndPoints.g.dart';

/// command to generate g.dart: flutter pub run build_runner build

@RestApi()
abstract class AmiiboEndPoints {
  factory AmiiboEndPoints() {
    var client = _AmiiboEndPoints(getConnectionParams());
    return client;
  }

  @GET("/amiibo")
  Future<AmiiboListModel> getAmiiboList();
}
