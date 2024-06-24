import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/dealership.dart';
part 'dealership_api_service.g.dart';

@RestApi(baseUrl: "https://api.dachbored.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/dealerships")
  Future<List<Dealership>> getDealerships();

  @GET("/dealerships/{id}")
  Future<Dealership> getDealershipById(@Path("id") String id);

  @POST("/dealerships")
  Future<Dealership> addDealership(@Body() Dealership dealership);

  @PUT("/dealerships/{id}")
  Future<Dealership> updateDealership(@Path("id") String id, @Body() Dealership dealership);

  @DELETE("/dealerships/{id}")
  Future<void> deleteDealership(@Path("id") String id);
}