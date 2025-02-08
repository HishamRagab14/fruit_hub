part of 'cart_cubit.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartItemAddedSuccess extends CartState {}

final class CartItemRemovedSuccess extends CartState {
  
}
