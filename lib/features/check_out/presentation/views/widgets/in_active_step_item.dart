import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.text, required this.index});
  final String text;
  final String index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         CircleAvatar(
          backgroundColor: const Color(0xffF2F3F3),
          radius: 10,
          child: Text(
            index,
            style: TextStyles.semiBold13,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyles.semiBold13.copyWith(color: const Color(0xffAAAAAA)),
        ),
      ],
    );
    
  }
}
