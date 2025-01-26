import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 375,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: const NavigationBarItem(
        isActive: true,
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.imagesPerson,
    );
  }
}
class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.imagesActivePerson,
    );
  }
}
class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? const ActiveItem() : const InActiveItem();
  }
}
