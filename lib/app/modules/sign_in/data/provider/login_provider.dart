import 'package:broker/app/config/utils/app_utils/api_constans.dart';
import 'package:broker/app/config/utils/services/api_response.dart';
import 'package:broker/app/modules/sign_in/data/model/check_otp_response_model.dart';
import 'package:broker/app/modules/sign_in/data/model/login_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../config/utils/services/api_service.dart';

class LoginProvider extends ApiService {
  Future<ApiResponse<LoginResponseModel>> loginUser({
    Map<String, dynamic>? data,
  }) async {
    try {
      final responseModel = await ApiService.post(
        endPoint: ApiConstans.loginUser,
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
        (json) => LoginResponseModel.fromJson(json["result"]),
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
}
