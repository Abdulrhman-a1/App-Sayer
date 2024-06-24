import 'package:dio/dio.dart';
import 'package:sayeer/data/services/dealership_api_service.dart';
import '../models/dealership.dart';

class DealershipRepository {
  final ApiService _apiService;

  DealershipRepository(Dio dio) : _apiService = ApiService(dio);

  Future<List<Dealership>> getDealerships() => _apiService.getDealerships();
  Future<Dealership> getDealershipById(String id) => _apiService.getDealershipById(id);
  Future<Dealership> addDealership(Dealership dealership) => _apiService.addDealership(dealership);
  Future<Dealership> updateDealership(String id, Dealership dealership) => _apiService.updateDealership(id, dealership);
  Future<void> deleteDealership(String id) => _apiService.deleteDealership(id);
}