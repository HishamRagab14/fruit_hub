import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEBF9F1),
      width: double.infinity, 
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  Center(
        child: Text(
          'لديك 3 منتجات فى سله  التسوق ',
          style: TextStyles.regular13.copyWith(color: AppColors.primaryColor  ),
        ),
      ),
    );
  }
}
