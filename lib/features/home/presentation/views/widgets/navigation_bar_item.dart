import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/active_bottom_navigation_bar_item.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/in_active_bottom_navigation_bar_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isActive,
      required this.bottomNavigationBarEntity});
  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveBottomNavigationBarItem(
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveBottomNavigationBarItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}