import 'package:dio/dio.dart';
import 'package:sayeer/data/services/dealership_api_service.dart';
import 'package:sayeer/utils/constants/API/api_error_handler.dart';
import 'package:sayeer/utils/constants/API/api_result.dart';
import '../models/dealership.dart';

class DealershipRepository {
  final ApiService _apiService;

  DealershipRepository(Dio dio) : _apiService = ApiService(dio);

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

  Future<void> deleteDealership(String id) async {
    try {
      await ApiResult.success(_apiService.deleteDealership(id));
    } catch (e) {
      ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
