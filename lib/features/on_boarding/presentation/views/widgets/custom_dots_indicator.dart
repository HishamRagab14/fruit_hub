import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.activeIndex,
  });
  final bool activeIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 2,
      position: 0,
      decorator: DotsDecorator(
        activeColor: AppColors.primaryColor,
        color: activeIndex
            ? AppColors.primaryColor
            : AppColors.primaryColor.withAlpha(128),
        activeSize: const Size(16, 8),
        // activeShape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
      ),
    );
  }
}
