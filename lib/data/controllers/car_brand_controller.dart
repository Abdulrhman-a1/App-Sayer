import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/car_brand.dart';
import '../repositores/car_brand_repository.dart';


class CarBrandController extends ChangeNotifier {
  final CarBrandRepository _carBrandRepository;
  List<CarBrand> _carBrands = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<CarBrand> get carBrands => _carBrands;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  CarBrandController(Dio dio) : _carBrandRepository = CarBrandRepository(dio);

  Future<void> fetchCarBrands() async {
    _setLoadingState(true);
    try {
      _carBrands = await _carBrandRepository.getCarBrands();
      _setErrorMessage(null);
    } catch (e) {
      _setErrorMessage(e.toString());
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> addCarBrand(CarBrand carBrand) async {
    try {
      final newCarBrand = await _carBrandRepository.addCarBrand(carBrand);
      _carBrands.add(newCarBrand);
      notifyListeners();
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> updateCarBrand(String id, CarBrand carBrand) async {
    try {
      final updatedCarBrand = await _carBrandRepository.updateCarBrand(id, carBrand);
      final index = _carBrands.indexWhere((cb) => cb.id == id);
      if (index != -1) {
        _carBrands[index] = updatedCarBrand;
        notifyListeners();
      }
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> deleteCarBrand(String id) async {
    try {
      await _carBrandRepository.deleteCarBrand(id);
      _carBrands.removeWhere((cb) => cb.id == id);
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