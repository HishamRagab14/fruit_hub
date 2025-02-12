import 'package:fruits_hub_app/features/check_out/data/models/order_product_model.dart';
import 'package:fruits_hub_app/features/check_out/data/models/shipping_address_model.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';

class OrderModel {
  final String uId;
  final ShippingModel shippingModel;
  final List<OrderProductModel> orderProductModel;
  final String paymentMethod;
  final String totalPrice;

  OrderModel({
    required this.uId,
    required this.shippingModel,
    required this.orderProductModel,
    required this.paymentMethod,
    required this.totalPrice,
  });
  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      uId: orderEntity.uId,
      shippingModel: ShippingModel.fromEntity(orderEntity.shippingEntity!),
      orderProductModel: orderEntity.cartEntity.cartItems
          .map((cartItem) => OrderProductModel.fromEntity(cartItem))
          .toList(),
      paymentMethod: orderEntity.payCash! ? 'cash' : 'card',
      totalPrice: orderEntity.cartEntity.calculateTotalPrice().toString(),
    );
  }
  toJson() {
    return {
      'uId': uId,
      'shippingModel': shippingModel,
      'orderProductModel': orderProductModel,
      'paymentMethod': paymentMethod,
      'totalPrice': totalPrice,
    };
  }
}
