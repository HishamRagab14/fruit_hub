import 'package:fruits_hub_app/features/check_out/domain/entities/shipping_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  final String uId;
  bool? payCash;
  ShippingEntity shippingEntity;

  OrderEntity({
    required this.cartEntity,
    this.payCash,
    required this.shippingEntity,
    required this.uId,
  });
  double calculateShippingCost() {
    if (payCash == true) {
      return 30;
    } else {
      return 0;
    }
  }

  double calculateShippingDiscount() {
    return 0;
  }

  double calculateTotalPriceAfterDiscountAndShipping() {
    return cartEntity.calculateTotalPrice() +
        calculateShippingCost() -
        calculateShippingDiscount();
  }
  
}
