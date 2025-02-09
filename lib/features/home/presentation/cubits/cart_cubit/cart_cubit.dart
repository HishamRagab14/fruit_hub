import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_entity.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity([]);
  void addProduct(ProductEntity product) {
    bool isExist = cartEntity.isExist(product);
    var cartItem = cartEntity.getCartItem(product);
    if (isExist) {
      cartItem.increaseQuantity();
    } else {
      cartEntity.addCartItemEntity(cartItem);
    }
    emit(CartItemAdded());
  }

  void deleteCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItemEntity(cartItemEntity);
    emit(CartItemRemoved());
  }
}
