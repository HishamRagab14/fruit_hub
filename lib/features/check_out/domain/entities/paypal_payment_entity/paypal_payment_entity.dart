import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(OrderEntity entity) =>
      PaypalPaymentEntity(
        amount: Amount.fromEnity(entity),
        description: 'Product description',
        itemList: ItemList.fromEntity(entity.cartEntity.cartItems),
      );
      toJson(){
        return {
          'amount': amount?.toJson(),
          'description': description,
          'item_list': itemList?.toJson(),
        };
      }
}
