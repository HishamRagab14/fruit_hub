import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/custom_network_image.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/cart_item_action_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous,current){
        if(current is CartItemUpdated){
          if( current.cartItem == cartItemEntity){
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return IntrinsicHeight(
          child: Row(
            children: [
              Container(
                height: 73,
                width: 92,
                decoration: const BoxDecoration(
                  color: Color(0xfff3f5f7),
                ),
                child: CustomNetworkImage(
                  imageUrl: cartItemEntity.product.imageUrl!,
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          cartItemEntity.product.name,
                          style: TextStyles.bold13,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CartCubit>()
                                .deleteCartItem(cartItemEntity);
                          },
                          child: SvgPicture.asset(Assets.imagesTrash),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        '${cartItemEntity.calculateTotalAmount()} كم',
                        style: TextStyles.regular13
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ),
                    Row(
                      children: [
                        CartItemActionButtons(
                          cartItemEntity: cartItemEntity,
                        ),
                        const Spacer(),
                        Text(
                          '${cartItemEntity.calculateTotalPrice()} جنيه',
                          style: TextStyles.bold16
                              .copyWith(color: AppColors.secondaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
