import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({
    super.key,
    required this.productsLength,
  });
  final int productsLength;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ' $productsLength نتائج ',
          style: TextStyles.bold16,
        ),
        SvgPicture.asset(Assets.imagesArrowSwapHorizontal)
      ],
    );
  }
}
