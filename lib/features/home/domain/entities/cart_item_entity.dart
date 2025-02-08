import 'package:fruits_hub_app/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
   int quantity;

  CartItemEntity({required this.productEntity, this.quantity = 0});
}
