import 'package:fruits_hub_app/features/check_out/domain/entities/shipping_entity.dart';

class ShippingModel {
  String? name;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  String? floor;

  ShippingModel(
      {this.name,
      this.phoneNumber,
      this.address,
      this.city,
      this.email,
      this.floor});
  factory ShippingModel.fromEntity(ShippingEntity entity) {
    return ShippingModel(
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      email: entity.email,
      address: entity.address,
      city: entity.city,
      floor: entity.floor,
    );
  }
   toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'address': address,
      'city': city,
      'floor': floor,
    };
  }

  @override
  String toString() {
    return '$address $floor $city';
  }
}
