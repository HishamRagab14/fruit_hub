import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/show_error_bar.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signup_view_body.dart';
import 'package:fruits_hub_app/features/home/presentation/views/main_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pushReplacementNamed(context, MainView.routeName,arguments: state.userEntity);
        }
        if (state is SignupFailure) {
          showErrorBar(context, state.errMsg);
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
