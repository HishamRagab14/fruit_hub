import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/widgets/item_quantity.dart';

class FruitItemListTile extends StatelessWidget {
  const FruitItemListTile({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(productEntity.name, style: TextStyles.bold16),
      ),
      subtitle: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: productEntity.price.toString(),
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            TextSpan(
              text: 'جنيه',
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            TextSpan(
              text: '/',
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            TextSpan(
              text: 'الكيلو',
              style: TextStyles.bold13.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
          ],
        ),
      ),
      trailing: const ItemQuantity(),
    );
  }
}
