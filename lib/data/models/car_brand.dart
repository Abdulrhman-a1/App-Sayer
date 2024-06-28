import 'package:json_annotation/json_annotation.dart';

part 'car_brand.g.dart';

@JsonSerializable()
class CarBrand {
  final String id;
  final String dealershipId;
  final String name;
  final String picture;
  final int sequence;

  CarBrand({
    required this.id,
    required this.dealershipId,
    required this.name,
    required this.picture,
    required this.sequence,
  });

  factory CarBrand.fromJson(Map<String, dynamic> json) => _$CarBrandFromJson(json);
  Map<String, dynamic> toJson() => _$CarBrandToJson(this);
}