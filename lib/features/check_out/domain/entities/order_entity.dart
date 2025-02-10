import 'package:fruits_hub_app/features/check_out/domain/entities/shipping_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';

class OrderEntity {
   final List<CartItemEntity> cartItems;
   final bool payCash;
   final ShippingEntity shippingEntity;

  OrderEntity(this.shippingEntity, {required this.cartItems,required this.payCash}); 
}