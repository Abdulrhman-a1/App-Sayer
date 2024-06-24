import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sayeer/utils/constants/API/api_constants.dart';
import '../models/car_brand.dart';
part 'car_brand_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/carBrands")
  Future<List<CarBrand>> getCarBrands();

  @GET("/carBrands/{id}")
  Future<CarBrand> getCarBrandById(@Path("id") String id);

  @POST("/carBrands")
  Future<CarBrand> addCarBrand(@Body() CarBrand carBrand);

  @PUT("/carBrands/{id}")
  Future<CarBrand> updateCarBrand(
      @Path("id") String id, @Body() CarBrand carBrand);

  @DELETE("/carBrands/{id}")
  Future<void> deleteCarBrand(@Path("id") String id);
}
