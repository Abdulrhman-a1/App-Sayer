import 'package:bloc/bloc.dart';
import 'dealership_state.dart';
import 'package:sayeer/data/models/dealership.dart';
import 'package:sayeer/data/repositores/dealership_repository.dart';


class DealershipCubit extends Cubit<DealershipState> {
  final DealershipRepository _dealershipRepository;
  DealershipCubit(this._dealershipRepository) : super(DealershipState.initial());

  Future<void> fetchDealerships() async {
    emit(DealershipState.loading());
    final response = await _dealershipRepository.getDealerships();
    response.when(
      success: (dealerships) {
        emit(DealershipState.success(dealerships));
      },
      failure: (error) {
        emit(DealershipState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addDealership(Dealership dealership) async {
    emit(DealershipState.loading());
    final response = await _dealershipRepository.addDealership(dealership);
    response.when(
      success: (AddDealership) {
        emit(DealershipState.success(AddDealership));
      },
      failure: (error) {
        emit(DealershipState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> updateDealership(String id, Dealership dealership) async {
    emit(DealershipState.loading());
    final response = await _dealershipRepository.updateDealership(id, dealership);
    response.when(
      success: (updatedDealership) {
        emit(DealershipState.success(updatedDealership));
      },
      failure: (error) {
        emit(DealershipState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> deleteDealership(String id) async {
    emit(DealershipState.loading());
    final response = await _dealershipRepository.deleteDealership(id);
    response.when(
      success: (deletedDealership) {
        emit(DealershipState.success('Dealership Deleted Successfully'.toString));
      },
      failure: (error) {
        emit(DealershipState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getDealershipById(String id) async {
    emit(DealershipState.loading());
    final response = await _dealershipRepository.getDealershipById(id);
    response.when(
      success: (dealership) {
        emit(DealershipState.success(dealership));
      },
      failure: (error) {
        emit(DealershipState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  
}
