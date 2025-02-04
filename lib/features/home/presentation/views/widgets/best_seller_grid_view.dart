import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/widgets/fruit_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return FruitItem(
          productEntity: products[index],
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
      ),
    );
  }
}
