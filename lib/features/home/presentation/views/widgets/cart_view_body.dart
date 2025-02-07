import 'package:flutter/material.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: kTopPadding,
        ),
        buildAppBar(context, title: 'السله',showNotification: false,),
        const SizedBox(
          height: 16,
        ),
        const CartHeader(),
        const SizedBox(
          height: 12,
        ),
        const CartItem(),



      ],
      
    );
  }
}