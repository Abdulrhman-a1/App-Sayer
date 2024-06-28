import 'package:json_annotation/json_annotation.dart';

part 'car_offer.g.dart';

@JsonSerializable()
class CarOffer {
  final String id;
  final String dealershipId;
  final String carId;
  final double originalPrice;
  final double monthlyPayment;
  final double discountPercentage;
  final double finalPriceAfterDiscount;
  final double upfrontPaymentAmount;
  final double finalPaymentAmount;
  final String financedBy;
  final int financeLengthInMonths;

  CarOffer({
    required this.id,
    required this.dealershipId,
    required this.carId,
    required this.originalPrice,
    required this.monthlyPayment,
    required this.discountPercentage,
    required this.finalPriceAfterDiscount,
    required this.upfrontPaymentAmount,
    required this.finalPaymentAmount,
    required this.financedBy,
    required this.financeLengthInMonths,
  });

  factory CarOffer.fromJson(Map<String, dynamic> json) => _$CarOfferFromJson(json);
  Map<String, dynamic> toJson() => _$CarOfferToJson(this);
}