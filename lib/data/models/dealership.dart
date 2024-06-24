import 'package:json_annotation/json_annotation.dart';

part 'dealership.g.dart';

@JsonSerializable()
class Dealership {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final String phoneNumber;
  final String businessRegistrationCR;
  final String vatId;
  final String companyInfo;
  final List<String> brands;

  Dealership({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.phoneNumber,
    required this.businessRegistrationCR,
    required this.vatId,
    required this.companyInfo,
    required this.brands,
  });

  factory Dealership.fromJson(Map<String, dynamic> json) => _$DealershipFromJson(json);
  Map<String, dynamic> toJson() => _$DealershipToJson(this);
}