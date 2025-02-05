import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/widgets/custom_network_image.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0XFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                productEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetworkImage(imageUrl: productEntity.imageUrl!))
                    : Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4)),
                      ),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    productEntity.name,
                    style: TextStyles.semiBold13,
                  ),
                  subtitle: FittedBox(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${productEntity.price} ',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.lightSecondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: '/',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: 'الكيلو',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.lightSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


