import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveBottomNavigationBarItem extends StatelessWidget {
  const ActiveBottomNavigationBarItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SvgPicture.asset(
        image,
      ),
    );
  }
}