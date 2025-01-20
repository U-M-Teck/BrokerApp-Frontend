import 'dart:convert';
import 'dart:io';

import 'package:broker/app/config/utils/app_utils/api_constans.dart';
import 'package:dio/dio.dart';

import '../model/response_model.dart';
import '../../config/utils/exceptions/exceptions.dart';


class AppUrl {
  AppUrl._();

  // receiveTimeout
  static const Duration receiveTimeout = Duration(seconds: 5);

  // connectTimeout
  static const Duration connectionTimeout = Duration(seconds: 5);

}

class ApiService {


  // dio instance
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: ApiConstans.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(milliseconds: 60 * 1000),
    sendTimeout: const Duration(milliseconds: 60 * 1000),
    receiveTimeout: const Duration(milliseconds: 60 * 1000),
  ))
    ..interceptors.add(LogInterceptor(
        request: false,
        responseHeader: false,
        error: false,
        requestBody: true,
        responseBody: true
    ));

  // GET request
  static Future<ResponseModel> get({required String endPoint,
    Map<String, dynamic>? query,
    Map<String, dynamic> data = const {},
    bool showErrorMessage = true,
    String? token,
    ProgressCallback? onReceiveProgress}) async {
    try {
      _dio.options.headers = {
        'Authorization': "Bearer $token",
      };
      final response = await _dio.get(endPoint,
          data: jsonEncode(data),
          queryParameters: query,
          onReceiveProgress: onReceiveProgress);

      return ResponseModel.fromJson(response.data);
    } on DioException catch (error) {
      throw handleDioExceptions(error, showErrorMessage);
    } on SocketException {
      throw AppException('No Internet connection');
    } on FormatException catch (e) {
      throw AppException(e.toString());
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  /// post
  static Future<ResponseModel> post({
    required String endPoint,
    bool showErrorMessage = true,
      Map<String, dynamic> data = const {},
      bool isFormData = false,
      Map<String, dynamic>? query,
      String? token,
      ProgressCallback? onSendProgress}) async {
    try {
      _dio.options.headers = {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
        'Authorization': "Bearer $token",
      };

      final response = await _dio.post(
        endPoint,
        data: isFormData ? FormData.fromMap(data) : jsonEncode(data),
        queryParameters: query,
        onSendProgress: onSendProgress,
      );

      return ResponseModel.fromJson(response.data);
    } on DioException catch (error) {
      throw handleDioExceptions(error, showErrorMessage);
    } on SocketException {
      throw AppException('No Internet connection');
    } on FormatException catch (e) {
      throw AppException(e.toString());
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  static Future<ResponseModel> patch({required String endPoint,
    bool showErrorMessage = true,
    Map<String, dynamic> data = const {},
    bool isFormData = false,
    Map<String, dynamic>? query,
    ProgressCallback? onSendProgress}) async {
    try {
      _dio.options.headers = {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      };

      final response = await _dio.patch(
        endPoint,
        data: isFormData ? FormData.fromMap(data) : jsonEncode(data),
        queryParameters: query,
        onSendProgress: onSendProgress,
      );

      return ResponseModel.fromJson(response.data);
    } on DioException catch (error) {
      throw handleDioExceptions(error, showErrorMessage);
    } on SocketException {
      throw AppException('No Internet connection');
    } on FormatException catch (e) {
      throw AppException(e.toString());
    } catch (e) {
      throw AppException(e.toString());
    }
  }
  static Future<ResponseModel> put({required String endPoint,
    bool showErrorMessage = true,
    Map<String, dynamic> data = const {},
    bool isFormData = false,
    Map<String, dynamic>? query,
    ProgressCallback? onSendProgress}) async {
    try {
      _dio.options.headers = {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      };

      final response = await _dio.put(
        endPoint,
        data: isFormData ? FormData.fromMap(data) : jsonEncode(data),
        queryParameters: query,
        onSendProgress: onSendProgress,
      );

      return ResponseModel.fromJson(response.data);
    } on DioException catch (error) {
      throw handleDioExceptions(error, showErrorMessage);
    } on SocketException {
      throw AppException('No Internet connection');
    } on FormatException catch (e) {
      throw AppException(e.toString());
    } catch (e) {
      throw AppException(e.toString());
    }
  }
}
