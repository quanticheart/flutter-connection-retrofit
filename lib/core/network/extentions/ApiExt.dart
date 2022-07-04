import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../constants/ApiContants.dart';
import 'package:dio_logger/dio_logger.dart';

import '../exceptios/ServerError.dart';
import '../response/BaseResponse.dart';

final logger = Logger();

Dio getConnectionParams() {
  var dio = Dio();
  dio.options.baseUrl = ApiConstants.baseUrl;
  dio.options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveTimeout: 5000,
      connectTimeout: 5000);
  dio.interceptors.add(dioLoggerInterceptor);
  ApiConstants.headers.forEach((key, value) {
    dio.options.headers[key] = value; // config your dio headers globally
  });
  return dio;
}

extension BaseResponseHandle<T> on Future<T> {
  Future<BaseResponse> handle() async {
    BaseResponse response = BaseResponse();
    try {
      response.data = await this;
    } catch (error, stacktrace) {
      response.status = false;
      response.setException(ServerError.withError(error: error));
      return response;
    }
    return response;
  }
}
