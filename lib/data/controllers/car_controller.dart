import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/car.dart';
import '../repositores/car_repository.dart';


class CarController extends ChangeNotifier {
  final CarRepository _carRepository;
  List<Car> _cars = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Car> get cars => _cars;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  CarController(Dio dio) : _carRepository = CarRepository(dio);

  Future<void> fetchCars() async {
    _setLoadingState(true);
    try {
      _cars = await _carRepository.getCars();
      _setErrorMessage(null);
    } catch (e) {
      _setErrorMessage(e.toString());
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> addCar(Car car) async {
    try {
      final newCar = await _carRepository.addCar(car);
      _cars.add(newCar);
      notifyListeners();
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> updateCar(String id, Car car) async {
    try {
      final updatedCar = await _carRepository.updateCar(id, car);
      final index = _cars.indexWhere((c) => c.id == id);
      if (index != -1) {
        _cars[index] = updatedCar;
        notifyListeners();
      }
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> deleteCar(String id) async {
    try {
      await _carRepository.deleteCar(id);
      _cars.removeWhere((c) => c.id == id);
      notifyListeners();
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  void _setLoadingState(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void _setErrorMessage(String? errorMessage) {
    _errorMessage = errorMessage;
    notifyListeners();
  }
}
