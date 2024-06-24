import 'package:dio/dio.dart';
import 'package:sayeer/utils/constants/API/api_error_handler.dart';
import 'package:sayeer/utils/constants/API/api_result.dart';
import '../models/car_offer.dart';
import '../services/car_offers_api_service.dart';

class CarOfferRepository {
  final ApiService _apiService;

  CarOfferRepository(Dio dio) : _apiService = ApiService(dio);

  Future<ApiResult<List<CarOffer>>> getCarOffers() async {
    try {
      final response = await _apiService.getCarOffers();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarOffer>> getCarOfferById(String id) async {
    try {
      final response = await _apiService.getCarOfferById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarOffer>> addCarOffer(CarOffer carOffer) async {
    try {
      final response = await _apiService.addCarOffer(carOffer);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarOffer>> updateCarOffer(
      String id, CarOffer carOffer) async {
    try {
      final response = await _apiService.updateCarOffer(id, carOffer);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<void> deleteCarOffer(String id) async {
    try {
      await ApiResult.success(_apiService.deleteCarOffer(id));
    } catch (e) {
      ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
