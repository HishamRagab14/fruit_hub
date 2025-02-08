part of 'cart_cubit.dart';

sealed class CartState {}

final class CartInitial extends CartState {}
final class CartLoading extends CartState {}

final class CartItemAddedFailure extends CartState {
  final String message;
  CartItemAddedFailure({required this.message});
}

final class CartItemRemovedFailure extends CartState {
  final String message;
  CartItemRemovedFailure({required this.message});
}

final class CartItemAddedSuccess extends CartState {
  
}

final class CartItemRemovedSuccess extends CartState {
  final List<CartItemEntity> cartItems;
  CartItemRemovedSuccess({required this.cartItems});
}
