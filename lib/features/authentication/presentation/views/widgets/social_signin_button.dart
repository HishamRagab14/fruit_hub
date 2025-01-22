import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class SocialSigninButton extends StatelessWidget {
  const SocialSigninButton(
      {super.key, this.onPressed, required this.image, required this.title});
  final void Function()? onPressed;
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,

        style: TextButton.styleFrom(
          alignment: Alignment.topRight,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffDCDEDE), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
            horizontal: VisualDensity.minimumDensity
          ),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xff0C0D0D),
              
            ),
          ),
        ),
      ),
    );

    // SizedBox(
    //   width: double.infinity,
    //   child: TextButton.icon(
    //     style: TextButton.styleFrom(
    //       alignment: Alignment.topRight,
    //       shape: RoundedRectangleBorder(
    //         side: const BorderSide(
    //           color: Color(0xffDCDEDE),
    //           width: 1
    //         ),
    //         borderRadius: BorderRadius.circular(16),
    //       )
    //     ),
    //     onPressed: onPressed,
    //     label: Text(
    //       title,
    //       style: TextStyles.semiBold16,
    //     ),
    //     icon: SvgPicture.asset(image),
    //   ),
    // );
  }
}
