import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signup_cubit/signup_cubit_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return const SignupViewBody();
      },
    );
  }
}