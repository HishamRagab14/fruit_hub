import 'package:flutter/material.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hintText: 'الاسم الكامل',
              textInputType: TextInputType.name,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(height: 16),
            TermsAndConditionWidget(),
            SizedBox(height: 33),
            CustomButton(text: 'انشاء حساب جديد'),
            SizedBox(height: 33),
            HaveAnAccount(),
            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
