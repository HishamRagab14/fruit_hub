import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/show_error_bar.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/check_out_view.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          text:
              'الدفع ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه',
          onPressed: () {
            if (context.read<CartCubit>().cartEntity.cartItems.isNotEmpty) {
              Navigator.pushNamed(
                context,
                CheckOutView.routeName,
                arguments: context.read<CartCubit>().cartEntity,
              );
            } else {
              showErrorBar(context, 'السله فارغه');
            }
          },
        );
      },
    );
  }
}
