import 'package:broker/app/config/utils/app_utils/api_constans.dart';
import 'package:broker/app/core/services/api_response.dart';
import 'package:broker/app/modules/change_password/data/model/change_password_response_model.dart';
import 'package:broker/app/modules/change_password/data/model/forget_password_response_model.dart';

import 'package:dio/dio.dart';

import '../../../../core/services/api_service.dart';

class ChangePasswordProvider {
  Future<ApiResponse<ForgetPasswordResponseModel>> forgetPassword({
    Map<String, dynamic>? data,
  }) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.forgetPassword,
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
        (json) => ForgetPasswordResponseModel.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ApiResponse<ChangePasswordResponseModel>> changePassword(
      {Map<String, dynamic>? data}) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.changePassword,
        data: data ?? {},
      );

      final response = Response<dynamic>(
        data: responseModel.data,
        statusCode: responseModel.success ? 200 : 400,
        statusMessage: responseModel.message,
        requestOptions: RequestOptions(path: ''),
      );
      return ApiResponse.fromResponse(
          response, (json) => ChangePasswordResponseModel.fromJson(json));
    } catch (e) {
      rethrow;
    }
  }
}
