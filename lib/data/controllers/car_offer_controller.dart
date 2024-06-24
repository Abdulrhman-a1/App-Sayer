import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


import '../models/car_offer.dart';
import '../repositores/car_offer_repository.dart';

class CarOfferController extends ChangeNotifier {
  final CarOfferRepository _carOfferRepository;
  List<CarOffer> _carOffers = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<CarOffer> get carOffers => _carOffers;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  CarOfferController(Dio dio) : _carOfferRepository = CarOfferRepository(dio);

  Future<void> fetchCarOffers() async {
    _setLoadingState(true);
    try {
      _carOffers = await _carOfferRepository.getCarOffers();
      _setErrorMessage(null);
    } catch (e) {
      _setErrorMessage(e.toString());
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> addCarOffer(CarOffer carOffer) async {
    try {
      final newCarOffer = await _carOfferRepository.addCarOffer(carOffer);
      _carOffers.add(newCarOffer);
      notifyListeners();
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> updateCarOffer(String id, CarOffer carOffer) async {
    try {
      final updatedCarOffer = await _carOfferRepository.updateCarOffer(id, carOffer);
      final index = _carOffers.indexWhere((co) => co.id == id);
      if (index != -1) {
        _carOffers[index] = updatedCarOffer;
        notifyListeners();
      }
    } catch (e) {
      _setErrorMessage(e.toString());
    }
  }

  Future<void> deleteCarOffer(String id) async {
    try {
      await _carOfferRepository.deleteCarOffer(id);
      _carOffers.removeWhere((co) => co.id == id);
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