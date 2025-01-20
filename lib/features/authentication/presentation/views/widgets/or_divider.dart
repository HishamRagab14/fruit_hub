import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            endIndent: 18,
            color: Color(0XFFDCDEDE),
          ),
        ),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xff0C0D0D),
          ),
        ),
        const Expanded(child: Divider(
          indent: 18,
        )),
      ],
    );
  }
}
