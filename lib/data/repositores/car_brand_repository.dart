import 'package:dio/dio.dart';
import 'package:sayeer/data/services/car_brand_api_service.dart';
import 'package:sayeer/utils/constants/API/api_error_handler.dart';
import 'package:sayeer/utils/constants/API/api_result.dart';
import '../models/car_brand.dart';

class CarBrandRepository {
  final ApiService _apiService;

  CarBrandRepository(Dio dio) : _apiService = ApiService(dio);

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
      await _apiService.deleteCarBrand(id);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
