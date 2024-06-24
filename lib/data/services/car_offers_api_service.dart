import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/car_offer.dart';
part 'car_offers_api_service.g.dart';

@RestApi(baseUrl: "https://api.dachbored.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

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
}
