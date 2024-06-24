import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sayeer/utils/constants/API/api_constants.dart';
import '../models/car.dart';
part 'car_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/cars")
  Future<List<Car>> getCars();

  @GET("/cars/{id}")
  Future<Car> getCarById(@Path("id") String id);

  @POST("/cars")
  Future<Car> addCar(@Body() Car car);

  @PUT("/cars/{id}")
  Future<Car> updateCar(@Path("id") String id, @Body() Car car);

  @DELETE("/cars/{id}")
  Future<void> deleteCar(@Path("id") String id);
}
