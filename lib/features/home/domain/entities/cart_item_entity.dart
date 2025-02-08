import 'package:fruits_hub_app/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int quantity;

  CartItemEntity({required this.product, this.quantity = 0});
  num calculateTotalPrice() {
    return product.price * quantity;
  }

  num calculateTotalAmount() {
    return product.unitAmount * quantity;
  }

  increaseQuantity() {
    quantity++;
  }

  decreaseQuantity() {
    quantity--;
  }
}
