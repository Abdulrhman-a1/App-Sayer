import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sayeer/data/models/car.dart';
import 'package:sayeer/data/models/car_brand.dart';
import 'package:sayeer/data/models/car_offer.dart';
import 'package:sayeer/data/models/dealership.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Car

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

  //Car Brand

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

  //Car Offer

  @GET("/car_offers")
  Future<List<CarOffer>> getCarOffers();

  @GET("/car_offers/{id}")
  Future<CarOffer> getCarOfferById(@Path("id") String id);

  @POST("/car_offers")
  Future<CarOffer> addCarOffer(@Body() CarOffer carOffer);

  @PUT("/car_offers/{id}")
  Future<CarOffer> updateCarOffer(
      @Path("id") String id, @Body() CarOffer carOffer);

  @DELETE("/car_offers/{id}")
  Future<void> deleteCarOffer(@Path("id") String id);

  //Dealership

  @GET("/dealerships")
  Future<List<Dealership>> getDealerships();

  @GET("/dealerships/{id}")
  Future<Dealership> getDealershipById(@Path("id") String id);

  @POST("/dealerships")
  Future<Dealership> addDealership(@Body() Dealership dealership);

  @PUT("/dealerships/{id}")
  Future<Dealership> updateDealership(
      @Path("id") String id, @Body() Dealership dealership);

  @DELETE("/dealerships/{id}")
  Future<void> deleteDealership(@Path("id") String id);

}
