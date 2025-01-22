import 'package:broker/app/config/utils/app_utils/api_constans.dart';
import 'package:broker/app/core/services/api_response.dart';
import 'package:broker/app/modules/sign_in/data/model/check_otp_response_model.dart';
import 'package:broker/app/modules/sign_up/data/model/check_phone_number_response_model.dart';
import 'package:broker/app/modules/sign_up/data/model/sign_up_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../core/services/api_service.dart';

class SignUpProvider  {
  Future<ApiResponse<SignUpResponseModel>> createOwner({
    Map<String, dynamic>? data,
  }) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.createOwner,
        data: data ?? {},
      );
      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );

      return ApiResponse.fromResponse(
        response,
        (json) => SignUpResponseModel.fromJson(json["result"]),
      );
    } catch (e) {
      rethrow;
    }
  }
    Future<ApiResponse<SignUpResponseModel>> createBroker({
    Map<String, dynamic>? data,
  }) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.createBroker,
        data: data ?? {},
      );
      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );

      return ApiResponse.fromResponse(
        response,
        (json) => SignUpResponseModel.fromJson(json["result"]),
      );
    } catch (e) {
      rethrow;
    }
  }
    Future<ApiResponse<SignUpResponseModel>> createSeeker({
    Map<String, dynamic>? data,
  }) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.createSeeker,
        data: data ?? {},
      );
      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );

      return ApiResponse.fromResponse(
        response,
        (json) => SignUpResponseModel.fromJson(json["result"]),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ApiResponse<SendOtpResponseModel>> checkOtp(
      {Map<String, dynamic>? data}) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.checkOtp,
        data: data ?? {},
      );

      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );
      return ApiResponse.fromResponse(
          response, (json) => SendOtpResponseModel.fromJson(json["result"]));
    } catch (e) {
      rethrow;
    }
  }
  Future<ApiResponse<CheckPhoneNumberResponseModel>> checkPhoneNumber(
      {Map<String, dynamic>? data}) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.checkPhoneNumber,
        data: data ?? {},
      );

      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );
      return ApiResponse.fromResponse(
          response, (json) => CheckPhoneNumberResponseModel.fromJson(json["result"]));
    } catch (e) {
      rethrow;
    }
  }
}
