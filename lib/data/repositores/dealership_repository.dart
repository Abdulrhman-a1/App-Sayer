import 'package:sayeer/data/models/dealership.dart';
import 'package:sayeer/data/networking/api_error_handler.dart';
import 'package:sayeer/data/networking/api_result.dart';
import 'package:sayeer/data/networking/api_service.dart';

class DealershipRepository {
  final ApiService _apiService;

  DealershipRepository(this._apiService);

  Future<ApiResult<List<Dealership>>> getDealerships() async {
    try {
      final response = await _apiService.getDealerships();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Dealership>> getDealershipById(String id) async {
    try {
      final response = await _apiService.getDealershipById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Dealership>> addDealership(Dealership dealership) async {
    try {
      final response = await _apiService.addDealership(dealership);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<Dealership>> updateDealership(
      String id, Dealership dealership) async {
    try {
      final response = await _apiService.updateDealership(id, dealership);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<void>> deleteDealership(String id) async {
    try {
     return await ApiResult.success(_apiService.deleteDealership(id));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
