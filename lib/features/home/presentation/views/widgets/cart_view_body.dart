import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/core/widgets/custom_divider.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item_view_list.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_cart_button.dart';

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
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
            CartItemViewList(
              cartItemEntity: context.watch<CartCubit>().cartEntity.cartItems,
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.01,
          left: 16,
          right: 16,
          child: const CustomCartButton(),
        ),
      ],
    );
  }
}


