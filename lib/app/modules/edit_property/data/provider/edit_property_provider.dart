import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' show Client;
import '../../../../config/utils/app_utils/api_constans.dart';
import '../../../../core/model/failure.dart';
import '../../../../core/model/response_model.dart';
import '../../../../core/services/api_service.dart';
import '../../../home/data/models/place_model.dart';
import '../../../home/data/models/route_model.dart';
import '../../../home/data/models/suggestion_model.dart';

class EditPropertyProvider {
    static const String baseurl = 'https://maps.googleapis.com/maps/api';

     Future<Either<dynamic, Failure>> getAllDurations(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getAllDurations,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
         Future<Either<dynamic, Failure>> checkCoupon(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.checkCoupon,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
  Future<String> getAddress(LatLng location) async {
    try {
      await setLocaleIdentifier("ar");
      final placeMarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );
      Placemark place = placeMarks[0];
      final String address =
          '${_addressJoin(place.street)}${_addressJoin(place.locality)}${_addressJoin(place.administrativeArea)}${_addressJoin(place.postalCode)} ${place.country ?? ""}';
      return address;
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  String _addressJoin(String? v) {
    final bool valid = v != null && v.isNotEmpty;
    return "${v ?? ""}${valid ? ", " : ""}";
  }

  Future<List<SuggestionModel>> fetchSuggestions(
    String input,
    String lang,
    lat,
    lng,
  ) async {
    final request =
        '$baseurl/place/autocomplete/json?input=$input&radius=50000&location=$lat,$lng&language=$lang&components=country:eg&key=${ApiConstans.mapKey}';

    final response = await Client().get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);

      if (result['status'] == 'OK') {
        return result['predictions']
            .map<SuggestionModel>(
              (p) => SuggestionModel(p['place_id'], p['description']),
            )
            .toList();
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(result['error_message']);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }

  Future<PlaceModel> 
  getPlaceDetailFromId(String placeId) async {
    final request =
        '$baseurl/place/details/json?place_id=$placeId&key=${ApiConstans.mapKey}';
    final response = await Client().get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      return PlaceModel.fromJson(result);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }

  Future<RouteModel?> getRoute(LatLng origin, LatLng destination) async {
    final request =
        '$baseurl/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=${ApiConstans.mapKey}';

    try {
      final response = await Client().get(Uri.parse(request));

      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        return RouteModel.fromJson(result);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
  Future<Either<dynamic, Failure>> editAdvertisement(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.editAdvertisement,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
 Future<Either<dynamic, Failure>> getPaymentUrl(
    dynamic data,
    
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getPaymentUrl,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
  Future<Either<dynamic, Failure>> uploadImage(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        isFormData: true,
        data: data ?? {},
        endPoint: ApiConstans.uploadImage,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }

  Future<Either<dynamic, Failure>> getAllGovernates(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getAllGovernates,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }

  Future<Either<dynamic, Failure>> getAdvDetailsForEdit(
      {Map<String, dynamic>? data}) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getAdvDetailsForEdit,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
}
