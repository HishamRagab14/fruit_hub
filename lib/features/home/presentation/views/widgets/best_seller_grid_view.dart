import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/fruit_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return const FruitItem();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163/214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
      ),
    );
  }
}
