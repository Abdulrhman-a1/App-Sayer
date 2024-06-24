import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../models/dealership.dart';
import '../repositores/dealership_repository.dart';

class DealershipController extends ChangeNotifier {
  final DealershipRepository _dealershipRepository;
  List<Dealership> _dealerships = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Dealership> get dealerships => _dealerships;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  DealershipController(Dio dio) : _dealershipRepository = DealershipRepository(dio);

  Future<void> fetchDealerships() async {
    _setLoadingState(true);
    try {
      _dealerships = await _dealershipRepository.getDealerships();
      _setErrorMessage(null);
    } catch (e) {
      _setErrorMessage(e.toString());
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> addDealership(Dealership dealership) async {
    try {
      final newDealership = await _dealershipRepository.addDealership(dealership);
      _dealerships.add(newDealership);
      notifyListeners();
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> updateDealership(String id, Dealership dealership) async {
    try {
      final updatedDealership = await _dealershipRepository.updateDealership(id, dealership);
      final index = _dealerships.indexWhere((d) => d.id == id);
      if (index != -1) {
        _dealerships[index] = updatedDealership;
        notifyListeners();
      }
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> deleteDealership(String id) async {
    try {
      await _dealershipRepository.deleteDealership(id);
      _dealerships.removeWhere((d) => d.id == id);
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