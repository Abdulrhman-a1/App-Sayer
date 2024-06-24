import 'package:json_annotation/json_annotation.dart';
part 'car.g.dart';

@JsonSerializable()
class Car {
  final String id;
  final String name;
  final String type;
  final String model;
  final int year;
  final String image;
  final String countryOfOrigin;
  final String carType;
  final double fuelEconomyRate;
  final String fuelType;
  final int passengerSeatCount;
  final String brandId;

  Car({
    required this.id,
    required this.name,
    required this.type,
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