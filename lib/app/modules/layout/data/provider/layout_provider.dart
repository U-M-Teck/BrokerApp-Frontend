import 'package:broker/app/config/utils/app_utils/api_constans.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/model/failure.dart';
import '../../../../core/model/response_model.dart';
import '../../../../core/services/api_service.dart';

class LayoutProvider {
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
  Future<Either<dynamic, Failure>> getFavorites(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getFavorites,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
    Future<Either<dynamic, Failure>> changeActiveStatus(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.changeActiveStatus,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
    Future<Either<dynamic, Failure>> deleteFavorite(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.deleteFavorite,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
      Future<Either<dynamic, Failure>> deleteAdvertisement(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.deleteAdvertisement,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
      Future<Either<dynamic, Failure>> deleteFavoriteByAdId(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.deleteFavoriteByAdId,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
    Future<Either<dynamic, Failure>> createFavorite(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.createFavorite,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  } 
      Future<Either<dynamic, Failure>> deleteAccount(
    Map<String, dynamic>? data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.deleteAccount,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }    Future<Either<dynamic, Failure>> getAllAdvertisement(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.getAllAdvertisement,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
    Future<Either<dynamic, Failure>> createViewForAdvertisement(
    dynamic data,
  ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data ?? {},
        endPoint: ApiConstans.createViewForAdvertisement,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }


    Future<Either<dynamic, Failure>> getAdvDetails(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data  ?? {},
        endPoint: ApiConstans.getAdvDetails,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
      Future<Either<dynamic, Failure>> getAllAdvertisementForUser(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data  ?? {},
        endPoint: ApiConstans.getAllAdvertisementForUser,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
        Future<Either<dynamic, Failure>> deleteAllByUserIdAdvertisement(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data  ?? {},
        endPoint: ApiConstans.deleteAllByUserIdAdvertisement,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
        Future<Either<dynamic, Failure>> getUserNotifications(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        data: data  ?? {},
        endPoint: ApiConstans.getUserNotifications,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }

  Future<Either<dynamic, Failure>> getSeekerDetails(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        query: data  ?? {},
        endPoint: ApiConstans.getSeekerDetails,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  } Future<Either<dynamic, Failure>> searchByFilter(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        query: data  ?? {},
        endPoint: ApiConstans.searchByFilter,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
   Future<Either<dynamic, Failure>> getOwnerDetails(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        query: data  ?? {},
        endPoint: ApiConstans.getOwnerDetails,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
     Future<Either<dynamic, Failure>> getBrokerDetails(
      {Map<String, dynamic>? data}
    ) async {
    try {
      ResponseModel response = await ApiService.post(
        query: data  ?? {},
        endPoint: ApiConstans.getBrokerDetails,
      );
      return Left(response.data);
    } on ResponseModel catch (responseModel) {
      return Left(responseModel);
    } on Failure catch (failure) {
      return Right(failure);
    }
  }
}
