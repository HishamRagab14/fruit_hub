import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key, });

  @override
  State<TermsAndConditionWidget> createState() => _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        children: [
          Checkbox(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            value: isTermsAccepted,
            onChanged: (value) {
              isTermsAccepted = value!;
              setState(() {});
            },
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب، فإنك توافق على',
                    style: TextStyles.semiBold13
                        .copyWith(color: const Color(0xff949D9E)),
                  ),
                  const TextSpan(text: ' ', style: TextStyles.semiBold13),
                  TextSpan(
                    text: 'الشروط والاحكام',
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                  const TextSpan(text: ' ', style: TextStyles.semiBold13),
                  TextSpan(
                    text: 'الخاصة',
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                  const TextSpan(text: ' ', style: TextStyles.semiBold13),
                  TextSpan(
                    text: 'بنا',
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
