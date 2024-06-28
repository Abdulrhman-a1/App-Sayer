import 'package:bloc/bloc.dart';
import 'package:sayeer/data/models/car_brand.dart';
import 'package:sayeer/data/repositores/car_brand_repository.dart';
import 'car_brand_state.dart';

class CarBrandCubit extends Cubit<CarBrandState> {
  final CarBrandRepository _carBrandRepository;

  CarBrandCubit(this._carBrandRepository) : super(CarBrandState.initial());

  Future<void> fetchCarBrands() async {
    emit(CarBrandState.loading());
    final response = await _carBrandRepository.getCarBrands();
    response.when(
      success: (carBrands) {
        emit(CarBrandState.success(carBrands));
      },
      failure: (error) {
        emit(CarBrandState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addCarBrand(CarBrand carBrand) async {
    emit(CarBrandState.loading());
    final response = await _carBrandRepository.addCarBrand(carBrand);
    response.when(
      success: (AddCarBrand) {
        emit(CarBrandState.success(AddCarBrand));
      },
      failure: (error) {
        emit(CarBrandState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> updateCarBrand(String id, CarBrand carBrand) async {
    emit(CarBrandState.loading());
    final response = await _carBrandRepository.updateCarBrand(id, carBrand);
    response.when(
      success: (updatedCarBrand) {
        emit(CarBrandState.success(updatedCarBrand));
      },
      failure: (error) {
        emit(CarBrandState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> deleteCarBrand(String id) async {
    emit(CarBrandState.loading());
    final response = await _carBrandRepository.deleteCarBrand(id);
    response.when(
      success: (deletedCarBrand) {
        emit(CarBrandState.success('Car Brand Deleted Successfully'.toString));
      },
      failure: (error) {
        emit(CarBrandState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
