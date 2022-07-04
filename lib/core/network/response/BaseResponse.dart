import 'package:connection_retrofit/core/network/exceptios/ServerError.dart';

class BaseResponse<T> {
  ServerError? _error;
  T? data = null;
  bool status = true;

  setException(ServerError error) {
    status = false;
    _error = error;
  }

  setData(T data) {
    this.data = data;
  }

  get getException {
    return _error;
  }

  @override
  String toString() {
    return 'BaseResponse{_error: $_error, data: $data, status: $status}';
  }
}
