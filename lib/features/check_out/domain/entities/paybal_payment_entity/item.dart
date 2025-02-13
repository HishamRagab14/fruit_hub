import 'package:fruits_hub_app/core/helper_functions/get_currency.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';

class ItemEntity {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  ItemEntity({this.name, this.quantity, this.price, this.currency});

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
  factory ItemEntity.fromEntity(CartItemEntity cartItemEntity) {
    return ItemEntity(
      name: cartItemEntity.product.name,
      quantity: cartItemEntity.quantity,
      price: cartItemEntity.product.price.toString(),
      currency: getCurrency(),
    );
  }
}
