import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signin_view.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signup_view.dart';
import 'package:fruits_hub_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignView.routeName:
      return MaterialPageRoute(builder: (context) => const SignView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case HomeView.routeName:
      final UserEntity userEntity = settings.arguments as UserEntity;
      return MaterialPageRoute(
          builder: (context) => HomeView(
                user: userEntity,
              ));
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
