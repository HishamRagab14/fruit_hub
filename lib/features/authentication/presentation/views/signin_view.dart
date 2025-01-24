import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/services/get_it_service.dart';
import 'package:fruits_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:fruits_hub_app/features/authentication/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class SignView extends StatelessWidget {
  const SignView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(
        title: 'تسجيل الدخول',
        context,
      ),
      body: BlocProvider(
        create: (context) => SigninCubit(
          getIt.get<AuthRepo>(),
        ),
        child: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}


