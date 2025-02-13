import 'amount.dart';
import 'item_list.dart';

class PaybalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaybalPaymentEntity({this.amount, this.description, this.itemList});

  
  factory PaybalPaymentEntity.fromEntity(PaybalPaymentEntity entity) =>
      PaybalPaymentEntity(
        amount: entity.amount,
        description: entity.description,
        itemList: entity.itemList,
      );
}
