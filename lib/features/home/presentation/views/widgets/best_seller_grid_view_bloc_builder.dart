import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub_app/core/helper_functions/get_dummy_product.dart';
import 'package:fruits_hub_app/core/widgets/custom_error_widget.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/best_seller_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellerGridViewBlocBuilder extends StatelessWidget {
  const BestSellerGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellerGridView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(text: state.errMsg));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellerGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
