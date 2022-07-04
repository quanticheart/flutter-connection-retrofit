import 'package:connection_retrofit/core/network/extentions/ApiExt.dart';
import 'package:connection_retrofit/core/network/response/BaseResponse.dart';
import 'package:connection_retrofit/data/AmiiboEndPoints.dart';

class AmiiboClient {
  late AmiiboEndPoints endpoint;

  AmiiboClient() {
    endpoint = AmiiboEndPoints();
  }

  Future<BaseResponse> getAmiiboList() async {
    return await endpoint.getAmiiboList().handle();
  }
}
