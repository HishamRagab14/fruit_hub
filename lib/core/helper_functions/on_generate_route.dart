import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/review_view.dart';
// import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signin_view.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signup_view.dart';
import 'package:fruits_hub_app/features/best_selling_feature/presentation/views/best_selling_view.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/check_out_view.dart';
import 'package:fruits_hub_app/features/home/domain/entities/cart_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/main_view.dart';
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
    case MainView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainView(),
      );

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case ReviewView.routeName:
      return MaterialPageRoute(builder: (context) => const ReviewView());
    case CheckOutView.routeName:
      return MaterialPageRoute(
        builder: (context) => CheckOutView(
          cartEntity: settings.arguments as CartEntity,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
