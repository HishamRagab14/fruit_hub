import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: createAppBar(context, title: 'حساب جديد',),
      body: const SignupViewBody(),
    );
  }
}