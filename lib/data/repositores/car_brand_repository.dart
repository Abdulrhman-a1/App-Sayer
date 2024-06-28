import 'package:sayeer/data/models/car_brand.dart';
import 'package:sayeer/data/networking/api_error_handler.dart';
import 'package:sayeer/data/networking/api_result.dart';
import 'package:sayeer/data/networking/api_service.dart';

class CarBrandRepository {
  final ApiService _apiService;

  CarBrandRepository(this._apiService);

  Future<ApiResult<List<CarBrand>>> getCarBrands() async {
    try {
      final response = await _apiService.getCarBrands();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarBrand>> getCarBrandById(String id) async {
    try {
      final response = await _apiService.getCarBrandById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarBrand>> addCarBrand(CarBrand carBrand) async {
    try {
      final response = await _apiService.addCarBrand(carBrand);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CarBrand>> updateCarBrand(
      String id, CarBrand carBrand) async {
    try {
      final response = await _apiService.updateCarBrand(id, carBrand);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> deleteCarBrand(String id) async {
    try {
      return ApiResult.success(await _apiService.deleteCarBrand(id));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
