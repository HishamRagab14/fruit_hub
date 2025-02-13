class ShippingEntity {
  String? name;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  String? floor;

  ShippingEntity(
      {this.name,
      this.phoneNumber,
      this.address,
      this.city,
      this.email,
      this.floor});

  @override
  String toString() {
    return '$address $floor $city';
  }
}
