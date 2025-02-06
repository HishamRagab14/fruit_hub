import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class ProductDetailListTile extends StatelessWidget {
  const ProductDetailListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyles.bold16.copyWith(
          color: const Color(0xff23AA49),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          subTitle,
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xff979899),
          ),
        ),
      ),
      trailing: SvgPicture.asset(image),
    );
  }
}
