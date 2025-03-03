import 'package:dio/dio.dart';

class AppException implements Exception {
  final String? message;

  AppException(this.message);

  @override
  String toString() => message??"";
}

class NetworkException extends AppException {
  NetworkException(super.message);
}

class ServerException extends AppException {
  final int? statusCode;
  final dynamic errors;
  ServerException(super.message, this.statusCode, this.errors);
}


handleDioExceptions(DioException error) {

  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      throw NetworkException("Connection timed out");
    case DioExceptionType.sendTimeout:
      throw NetworkException("Send request timed out");
    case DioExceptionType.receiveTimeout:
      throw NetworkException("Receive request timed out");
    case DioExceptionType.badResponse:
      throw ServerException(
       error.response?.data['message']  ,
        error.response?.statusCode ,
        error.response?.data['errors'],
      );
    case DioExceptionType.cancel:
      throw AppException("Request was cancelled");
    case DioExceptionType.unknown:
      throw AppException("An unknown error occurred: ${error.message}");
    case DioExceptionType.badCertificate:
      throw AppException("Bad certificate error");
    case DioExceptionType.connectionError:
      throw NetworkException("Connection error occurred");
}
}
