import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_password_text_field.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signup_cubit/signup_cubit_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 24,
              ),
               CustomTextFormField(
                onSaved: (value){
                  name = value!;
                },
                hintText: 'الاسم الكامل',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
               CustomTextFormField(
                onSaved: (value){
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
               CustomPasswordTextFormField(
                
                onSaved: (value){
                  password = value!;
                },
                
               ),
              const SizedBox(height: 16),
              const TermsAndConditionWidget(),
              const SizedBox(height: 33),
              CustomButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    BlocProvider.of<SignupCubit>(context).createUserWithEmailAndPassword(email: email, password: password, name: name);
                    // context.read<SignupCubit>().createUserWithEmailAndPassword(email: '',name:'' ,password: '');
                  } else{
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'انشاء حساب جديد'),
              const SizedBox(height: 33),
              const HaveAnAccount(),
              const SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}

