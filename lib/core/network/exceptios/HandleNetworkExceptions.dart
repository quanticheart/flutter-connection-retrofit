import 'dart:io';
import 'package:dio/dio.dart';

abstract class NetworkExceptions {
  static String handle(error) {
    var errorMessage = "error";
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              errorMessage = "Request was cancelled";
              break;
            case DioErrorType.connectTimeout:
              errorMessage = "Connection timeout";
              break;
            case DioErrorType.other:
              errorMessage = "Connection failed due to internet connection";
              break;
            case DioErrorType.receiveTimeout:
              errorMessage = "Receive timeout in connection";
              break;
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                case 401:
                case 403:
                  errorMessage = "Unauthorised request";
                  break;
                case 404:
                  errorMessage = "Not found";
                  break;
                case 409:
                  errorMessage = "Error due to a conflict";
                  break;
                case 408:
                  errorMessage = "Connection request timeout";
                  break;
                case 500:
                  errorMessage = "Internal Server Error";
                  break;
                case 503:
                  errorMessage = "Service unavailable";
                  break;
                default:
                  errorMessage =
                      "Received invalid status code: ${error.response?.statusCode}";
              }
              break;
            case DioErrorType.sendTimeout:
              errorMessage = "Receive timeout in send request";
              break;
            default:
              errorMessage = "Other Error";
              break;
          }
        } else if (error is SocketException) {
          errorMessage = "No internet connection";
        } else {
          errorMessage = "Unexpected error occurred";
        }
      } on FormatException catch (e) {
        errorMessage = "Unexpected error occurred $e";
      } on CastError catch (e) {
        errorMessage = "Unexpected error with result -> $e";
      } catch (_) {
        errorMessage = "Unexpected error occurred";
      }
    } else if (error is FormatException) {
      errorMessage = "Unexpected error occurred $error";
    } else if (error is TypeError) {
      errorMessage = "Unexpected error with result -> $error";
    } else {
      if (error.toString().contains("is not a subtype of")) {
        errorMessage = "Unable to process the data";
      } else {
        errorMessage = "Unexpected error occurred";
      }
    }
    return errorMessage;
  }
}
