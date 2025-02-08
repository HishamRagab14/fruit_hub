import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_divider.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item.dart';

class CartItemViewList extends StatelessWidget {
  const CartItemViewList({super.key, required this.cartItemEntity});
  final List<CartItemEntity> cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.only(left: 16,),
        child: CartItem(cartItemEntity: cartItemEntity[index],),
      ),
      itemCount: cartItemEntity.length,
    );
  }
}


