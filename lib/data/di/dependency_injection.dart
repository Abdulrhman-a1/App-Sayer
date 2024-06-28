import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sayeer/data/logic/car_brand_cubit.dart';
import 'package:sayeer/data/logic/car_cubit.dart';
import 'package:sayeer/data/logic/car_offer_cubit.dart';
import 'package:sayeer/data/logic/dealership_cubit.dart';
import 'package:sayeer/data/repositores/car_brand_repository.dart';
import 'package:sayeer/data/repositores/car_offer_repository.dart';
import 'package:sayeer/data/repositores/car_repository.dart';
import 'package:sayeer/data/repositores/dealership_repository.dart';
import 'package:sayeer/data/networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  getIt.registerSingleton<Dio>(dio);

  // CarBrandRepository
  getIt.registerFactory<CarBrandRepository>(() => CarBrandRepository(getIt()));
  getIt.registerFactory<CarBrandCubit>(() => CarBrandCubit(getIt()));

  // CarOfferRepository
  getIt.registerFactory<CarOfferRepository>(() => CarOfferRepository(getIt()));
  getIt.registerFactory<CarOfferCubit>(() => CarOfferCubit(getIt()));

  // CarRepository
  getIt.registerFactory<CarRepository>(() => CarRepository(getIt()));
  getIt.registerFactory<CarCubit>(() => CarCubit(getIt()));

  // DealershipRepository
  getIt.registerFactory<DealershipRepository>(() => DealershipRepository(getIt()));
  getIt.registerFactory<DealershipCubit>(() => DealershipCubit(getIt()));


}
