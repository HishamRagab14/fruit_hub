import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signin_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pop(context);
        } else if (state is SigninFailure) {
          buildErrorBar(context, state.errMsg);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
