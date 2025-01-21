import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signup_cubit/signup_cubit_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if(state is SignupLoading){}
        if(state is SignupSuccess){
          Navigator.pop(context);
        }
        if(state is SignupFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMsg)));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: const SignupViewBody());
      },
    );
  }
}