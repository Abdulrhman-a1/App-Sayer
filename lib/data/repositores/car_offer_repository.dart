import 'package:sayeer/data/models/car_offer.dart';
import 'package:sayeer/data/networking/api_error_handler.dart';
import 'package:sayeer/data/networking/api_result.dart';
import 'package:sayeer/data/networking/api_service.dart';

class CarOfferRepository {
  final ApiService _apiService;

  CarOfferRepository(this._apiService);

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

  Future<ApiResult<void>> deleteCarOffer(String id) async {
    try {
      return await ApiResult.success(_apiService.deleteCarOffer(id));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
  
}
