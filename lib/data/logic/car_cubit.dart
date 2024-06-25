import 'package:bloc/bloc.dart';
import 'car_state.dart';
import 'package:sayeer/data/models/car.dart';
import 'package:sayeer/data/repositores/car_repository.dart';

class CarCubit extends Cubit<CarState> {
  final CarRepository _carRepository;
  CarCubit(this._carRepository) : super(CarState.initial());

  Future<void> getCars() async {
    emit(CarState.loading());
    final response = await _carRepository.getCars();
    response.when(
      success: (cars) {
        emit(CarState.success(cars));
      },
      failure: (error) {
        emit(CarState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addCar(Car car) async {
    emit(CarState.loading());
    final response = await _carRepository.addCar(car);
    response.when(
      success: (newCar) {
        emit(CarState.success([newCar]));
      },
      failure: (error) {
        emit(CarState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> updateCar(String id, Car car) async {
    emit(CarState.loading());
    final response = await _carRepository.updateCar(id, car);
    response.when(
      success: (updatedCar) {
        emit(CarState.success([updatedCar]));
      },
      failure: (error) {
        emit(CarState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> deleteCar(String id) async {
    emit(CarState.loading());
    final response = await _carRepository.deleteCar(id);
    response.when(
      success: (_) {
        emit(CarState.success('Car Deleted Successfully'.toString()));
      },
      failure: (error) {
        emit(CarState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getCarById(String id) async {
    emit(CarState.loading());
    final response = await _carRepository.getCarById(id);
    response.when(
      success: (car) {
        emit(CarState.success([car]));
      },
      failure: (error) {
        emit(CarState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
