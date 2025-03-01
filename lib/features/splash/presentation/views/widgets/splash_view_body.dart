import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/features/authentication/presentation/views/signin_view.dart';
import 'package:fruits_hub_app/features/home/presentation/views/main_view.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBubble,
          fit: BoxFit.fill,
        )
      ],
    );
  }

  executeNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        if (mounted) {
          var isLoggedIn = FirebaseAuthService().isLoggedIn();
          if (isLoggedIn) {
            Navigator.pushReplacementNamed(context, MainView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, SignView.routeName);
          }
        }
      } else {
        if (mounted) {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
  }
}
