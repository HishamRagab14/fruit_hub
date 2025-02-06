import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_app/core/widgets/fruit_item_details_body.dart';

class FruitItemDetails extends StatelessWidget {
  const FruitItemDetails({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: '',
        showBackButton: true,
        backgroundColor: Colors.grey.shade200,
      ),
      body: FruitItemDetailsBody(
        productEntity: productEntity,
      ),
    );
  }
}
