import 'package:bloc/bloc.dart';
import 'car_offer_state.dart';
import 'package:sayeer/data/models/car_offer.dart';
import 'package:sayeer/data/repositores/car_offer_repository.dart';

class CarOfferCubit extends Cubit<CarOfferState> {
  final CarOfferRepository _carOfferRepository;
  CarOfferCubit(this._carOfferRepository) : super(CarOfferState.initial());

  Future<void> fetchCarOffers() async {
    emit(CarOfferState.loading());
    final response = await _carOfferRepository.getCarOffers();
    response.when(
      success: (carOffers) {
        emit(CarOfferState.success(carOffers));
      },
      failure: (error) {
        emit(CarOfferState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addCarOffer(CarOffer carOffer) async {
    emit(CarOfferState.loading());
    final response = await _carOfferRepository.addCarOffer(carOffer);
    response.when(
      success: (AddCarOffer) {
        emit(CarOfferState.success(AddCarOffer));
      },
      failure: (error) {
        emit(CarOfferState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> updateCarOffer(String id, CarOffer carOffer) async {
    emit(CarOfferState.loading());
    final response = await _carOfferRepository.updateCarOffer(id, carOffer);
    response.when(
      success: (updatedCarOffer) {
        emit(CarOfferState.success(updatedCarOffer));
      },
      failure: (error) {
        emit(CarOfferState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> deleteCarOffer(String id) async {
    emit(CarOfferState.loading());
    final response = await _carOfferRepository.deleteCarOffer(id);
    response.when(
      success: (deletedCarOffer) {
        emit(CarOfferState.success('Car Offer Deleted Successfully'.toString));
      },
      failure: (error) {
        emit(CarOfferState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getCarOfferById(String id) async {
    emit(CarOfferState.loading());
    final response = await _carOfferRepository.getCarOfferById(id);
    response.when(
      success: (carOffer) {
        emit(CarOfferState.success([carOffer]));
      },
      failure: (error) {
        emit(CarOfferState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
