import 'package:connection_retrofit/core/network/exceptios/HandleNetworkExceptions.dart';
import 'package:dio/dio.dart' hide Headers;

class ServerError implements Exception {
  int _errorCode = 500;
  String _errorMessage = "error";

  ServerError.withError({Object? error}) {
    var code = 500;
    if (error is DioError) {
      code = error.response?.statusCode ?? 500;
    }
    _errorCode = code;
    _errorMessage = NetworkExceptions.handle(error);
  }

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  @override
  String toString() {
    return 'ServerError{_errorCode: $_errorCode, _errorMessage: $_errorMessage}';
  }
}
