import 'package:flutter/material.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_divider.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item_view_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: kTopPadding,
                  ),
                  buildAppBar(
                    context,
                    title: 'السله',
                    showNotification: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CartHeader(),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
            const CartItemViewList(
              cartItemEntity: [],
            ),
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.01,
          left: 16,
          right: 16,
          child: CustomButton(
            text: 'الدفع  120جنيه',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
