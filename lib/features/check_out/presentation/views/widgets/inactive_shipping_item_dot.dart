import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';

class InActiveShippingItemDot extends StatelessWidget {
  const InActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 18,
      decoration: const ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xff949D9E),
          ),
        ),
      ),
    );
  }
}

class ActiveShippingItemDot extends StatelessWidget {
  const ActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 18,
      decoration: const ShapeDecoration(
        color: AppColors.primaryColor,
        shape: OvalBorder(
          side: BorderSide(
            width: 3,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
