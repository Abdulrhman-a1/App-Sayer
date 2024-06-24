import 'package:dio/dio.dart';
import '../models/car.dart';
import '../services/car_api_service.dart';


class CarRepository {
  final ApiService _apiService;

  CarRepository(Dio dio) : _apiService = ApiService(dio);

  Future<List<Car>> getCars() => _apiService.getCars();

  Future<Car> getCarById(String id) => _apiService.getCarById(id);

  Future<Car> addCar(Car car) => _apiService.addCar(car);

  Future<Car> updateCar(String id, Car car) => _apiService.updateCar(id, car);

  Future<void> deleteCar(String id) => _apiService.deleteCar(id);
}
