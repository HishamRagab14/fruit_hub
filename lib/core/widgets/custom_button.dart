import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: AppColors.primaryColor),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.bold16.copyWith(
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
