import 'package:dio/dio.dart';
import '../models/car_offer.dart';
import '../services/car_offers_api_service.dart';



class CarOfferRepository {
  final ApiService _apiService;

  CarOfferRepository(Dio dio) : _apiService = ApiService(dio);

  Future<List<CarOffer>> getCarOffers() => _apiService.getCarOffers();
  Future<CarOffer> getCarOfferById(String id) => _apiService.getCarOfferById(id);
  Future<CarOffer> addCarOffer(CarOffer carOffer) => _apiService.addCarOffer(carOffer);
  Future<CarOffer> updateCarOffer(String id, CarOffer carOffer) => _apiService.updateCarOffer(id, carOffer);
  Future<void> deleteCarOffer(String id) => _apiService.deleteCarOffer(id);
}