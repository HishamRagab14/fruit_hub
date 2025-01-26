import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_button_navigation_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.user});
  final UserEntity user;
static const routeName = 'home_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SafeArea(child: HomeViewBody()),
      
    );
  }
}