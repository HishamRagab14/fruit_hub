import 'package:flutter/material.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'نسيت كلمة المرور',
              style: TextStyles.semiBold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            const SizedBox(height: 33),
            const CustomButton(text: 'تسجيل دخول'),
            const SizedBox(height: 33),
            const DonotHaveAnAccount(),
            const SizedBox(height: 33),
            const OrDivider(),
          ],
        ),
      ),
    );
  }
}
