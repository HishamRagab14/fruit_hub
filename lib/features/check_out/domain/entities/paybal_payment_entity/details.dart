import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

class Details {
  String? subtotal;
  String? shipping;
  double? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
  factory Details.fromEnity(OrderEntity order){
    return Details(
      subtotal: order.cartEntity.calculateTotalPrice().toString(),
      shipping: order.calculateShippingCost().toString(),
      shippingDiscount: order.calculateShippingDiscount(),
    );
  }
}
