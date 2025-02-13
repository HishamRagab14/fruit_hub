import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';

class OrderProductModel {
  final String code;
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;

  OrderProductModel(
      {required this.code,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.quantity});
  factory OrderProductModel.fromEntity(CartItemEntity cartItemEntity) {
    return OrderProductModel(
      code: cartItemEntity.product.code,
      name: cartItemEntity.product.name,
      imageUrl: cartItemEntity.product.imageUrl!,
      price: cartItemEntity.product.price.toDouble(),
      quantity: cartItemEntity.quantity,
    );
  }
  toJson() {
    return {
      'code': code,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }
}
