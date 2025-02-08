import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CartItemActionButton(icon: Icons.add, iconColor: Colors.white, onTap: (){}, backgroundColor: AppColors.darkPrimaryColor),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('3',style: TextStyles.bold16.copyWith(color: const Color(0xff06140C)),),
        ),
        CartItemActionButton(icon: Icons.remove, iconColor: Colors.grey, onTap: (){}, backgroundColor: const Color(0xFFF3F5F7))
      ],
    );
  }
}

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
    required this.backgroundColor,
  });
  final IconData icon;
  final Color iconColor, backgroundColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: const EdgeInsets.all(2),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        color: backgroundColor,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: FittedBox(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
