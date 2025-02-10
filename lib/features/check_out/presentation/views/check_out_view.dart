import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/check_out_view_body.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key, required this.cartEntity});
  static const routeName = 'checkOutView';
  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'الشحن',
        showNotification: false,
      ),
      body: Provider.value(
        value: OrderEntity(
          cartEntity: cartEntity,
        ),
        child: const CheckOutViewBody(),
      ),
    );
  }
}
