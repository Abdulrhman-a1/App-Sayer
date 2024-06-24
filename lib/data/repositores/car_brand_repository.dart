import 'package:dio/dio.dart';
import 'package:sayeer/data/services/car_brand_api_service.dart';
import '../models/car_brand.dart';


class CarBrandRepository {
  final ApiService _apiService;

  CarBrandRepository(Dio dio) : _apiService = ApiService(dio);

  Future<List<CarBrand>> getCarBrands() => _apiService.getCarBrands();
  Future<CarBrand> getCarBrandById(String id) =>
      _apiService.getCarBrandById(id);
  Future<CarBrand> addCarBrand(CarBrand carBrand) =>
      _apiService.addCarBrand(carBrand);
  Future<CarBrand> updateCarBrand(String id, CarBrand carBrand) =>
      _apiService.updateCarBrand(id, carBrand);
  Future<void> deleteCarBrand(String id) => _apiService.deleteCarBrand(id);
}
