import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hintText,
    this.isVisible = true,
  });
  final String? hintText;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            Assets.imagesSearchNormal,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: Visibility(
            visible: isVisible,
            child: SvgPicture.asset(
              Assets.imagesSetting4,
              fit: BoxFit.scaleDown,
            ),
          ),
          hintText: hintText ?? 'ابحث عن......',
          hintStyle:
              TextStyles.regular13.copyWith(color: const Color(0xff949D9E)),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          // focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(6));
  }
}
