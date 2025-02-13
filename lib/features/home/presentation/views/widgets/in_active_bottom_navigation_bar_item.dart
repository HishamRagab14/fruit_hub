import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveButtonNavigationBarItem extends StatelessWidget {
  const InActiveButtonNavigationBarItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
    );
  }
}
