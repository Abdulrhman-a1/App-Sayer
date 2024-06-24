import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/car_brand.dart';
part 'car_brand_api_service.g.dart';

@RestApi(baseUrl: "https://api.dachbored.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/car_brands")
  Future<List<CarBrand>> getCarBrands();

  @GET("/car_brands/{id}")
  Future<CarBrand> getCarBrandById(@Path("id") String id);

  @POST("/car_brands")
  Future<CarBrand> addCarBrand(@Body() CarBrand carBrand);

  @PUT("/car_brands/{id}")
  Future<CarBrand> updateCarBrand(
      @Path("id") String id, @Body() CarBrand carBrand);

  @DELETE("/car_brands/{id}")
  Future<void> deleteCarBrand(@Path("id") String id);
}
