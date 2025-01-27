import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveBottomNavigationBarItem extends StatelessWidget {
  const InActiveBottomNavigationBarItem({super.key, required this.image});
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