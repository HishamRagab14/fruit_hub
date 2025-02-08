import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_divider.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item.dart';

class CartItemViewList extends StatelessWidget {
  const CartItemViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(left: 16,),
        child: CartItem(),
      ),
      itemCount: 10,
    );
  }
}


