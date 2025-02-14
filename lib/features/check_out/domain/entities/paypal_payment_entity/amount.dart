import 'package:fruits_hub_app/core/helper_functions/get_currency.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  Details? details;

  Amount({this.total, this.currency, this.details});

  
factory Amount.fromEnity(OrderEntity entity) {
  return Amount(
    total: entity.calculateTotalPriceAfterDiscountAndShipping().toString(),
    currency: getCurrency(),
    details: Details.fromEnity(entity),
  );
}
  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details!.toJson(),
      };
}
