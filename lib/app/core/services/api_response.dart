import 'package:dio/dio.dart';

class ApiResponse<T> {
  final T? data;
  final String? message;
  final int? statusCode;

  ApiResponse({this.data, this.message, this.statusCode});

  // Parse from full Response<dynamic>
  factory ApiResponse.fromResponse(
      Response<dynamic> response, T Function(dynamic) fromJson) {
    return ApiResponse<T>(
      data: fromJson(response.data),
      message: response.statusMessage,
      statusCode: response.statusCode,
    );
  }
}
