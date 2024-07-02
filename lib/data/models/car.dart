import 'package:json_annotation/json_annotation.dart';
import 'package:sayeer/utils/constants/enums.dart';
part 'car.g.dart';

@JsonSerializable()
class Car {
  final int id;
  final String BrandName;
  final String name;
  final String model;
  final int year;
  final String image;
  final String countryOfOrigin;
  final Enum carType;
  final double fuelEconomyRate;
  final Enum fuelType;
  final int passengerSeatCount;
  final int brandId;

  Car({
    required this.BrandName,
    required this.id,
    required this.name,
    required this.model,
    required this.year,
    required this.image,
    required this.countryOfOrigin,
    required this.carType,
    required this.fuelEconomyRate,
    required this.fuelType,
    required this.passengerSeatCount,
    required this.brandId,
  });

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}
