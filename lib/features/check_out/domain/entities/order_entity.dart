import 'package:fruits_hub_app/features/check_out/domain/entities/shipping_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  final bool? payCash;
  final ShippingEntity? shippingEntity;

  OrderEntity({required this.cartEntity, this.payCash, this.shippingEntity});
}
