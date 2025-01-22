import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/social_signin_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 24,
              ),
               CustomTextFormField(
                onSaved: (value){
                  email = value!;
                },
                isObsecure: false,
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
               CustomTextFormField(
                onSaved: (value){
                  password = value!;
                },
                isObsecure: false,
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: const Icon(
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
              CustomButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    BlocProvider.of<SigninCubit>(context)
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                  
                },
                text: 'تسجيل دخول',
              ),
              const SizedBox(height: 33),
              const DonotHaveAnAccount(),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(
                height: 16,
              ),
               SocialSigninButton(
                onPressed: (){
                  BlocProvider.of<SigninCubit>(context).signinWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(
                height: 16,
              ),
              const SocialSigninButton(
                image: Assets.imagesAppleIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              const SizedBox(
                height: 16,
              ),
               SocialSigninButton(
                onPressed: () {
                  BlocProvider.of<SigninCubit>(context).signInWithFacebook();
                },
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
