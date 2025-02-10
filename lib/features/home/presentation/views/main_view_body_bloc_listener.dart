import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/main_view_body.dart';

class MainViewBodyBlocListener extends StatelessWidget {
  const MainViewBodyBlocListener({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          showErrorBar(context, 'تم اضافه المنتج الي السله',);
        }
        if (state is CartItemRemoved) {
          showErrorBar(context, 'تم حذف المنتج من السله');
        }
      },
      child: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
