import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signup_view.dart';

class DonotHaveAnAccount extends StatelessWidget {
  const DonotHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ليس لديك حساب؟',
          style: TextStyles.semiBold16.copyWith(color: const Color(0xff949D9E)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SignupView.routeName);
          },
          child: Text(
            'قم بانشاء حساب',
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.darkPrimaryColor),
          ),
        ),
      ],
    );
  }
}
