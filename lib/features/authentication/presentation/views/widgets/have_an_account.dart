import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/login_view.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          'تمتلك حساب بالفعل؟',
          style: TextStyles.semiBold16.copyWith(color: const Color(0xff949D9E)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginView.routeName);
          },
          child: Text(
            'تسجيل دخول',
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.darkPrimaryColor),
          ),
        ),
      ],
    );
  }
}