import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/services/get_it_service.dart';
import 'package:fruits_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({
    super.key,
  });

  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: createAppBar(
          context,
          title: 'حساب جديد',
        ),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}


