import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity(this.cartItems);
  addCartItemEntity(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }
  removeCartItemEntity(CartItemEntity cartItemEntity) {
    cartItems.remove(cartItemEntity);
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in cartItems) {
      totalPrice += cartItem.calculateTotalPrice();
    }
    return totalPrice;
  }

  bool isExist(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.product == product) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.product == product) {
        return cartItem;
      }
    }
    return CartItemEntity(product: product, quantity: 1);
  }
}
