import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

import 'inactive_shipping_item_dot.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.isSelected, required this.onTap});
  final String title, subTitle, price;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.only(
          top: 16,
          left: 13,
          right: 5,
          bottom: 16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: isSelected
                ? const BorderSide(color: AppColors.primaryColor, width: 1.5)
                : const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(4),
          ),
          color: const Color(0x33D9D9D9),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isSelected ? const ActiveShippingItemDot(): const InActiveShippingItemDot(),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.semiBold13.copyWith(
                        color: const Color(0xff000000),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subTitle,
                      style: TextStyles.regular13.copyWith(
                        color: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  '$price جنيه',
                  style: TextStyles.bold13.copyWith(
                    color: const Color(0xff3A8B33),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


