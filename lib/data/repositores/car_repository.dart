import 'package:sayeer/data/models/car.dart';
import 'package:sayeer/data/networking/api_error_handler.dart';
import 'package:sayeer/data/networking/api_result.dart';
import 'package:sayeer/data/networking/api_service.dart';


class CarRepository {
   final ApiService _apiService;

  CarRepository(this._apiService);

  Future<ApiResult<List<Car>>> getCars() async {
    try {
      final response = await _apiService.getCars();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Car>> getCarById(String id) async {
    try {
      final response = await _apiService.getCarById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Car>> addCar(Car car) async {
    try {
      final response = await _apiService.addCar(car);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Car>> updateCar(String id, Car car) async {
    try {
      final response = await _apiService.updateCar(id, car);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> deleteCar(String id) async {
    try {
      return await ApiResult.success(_apiService.deleteCar(id));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
