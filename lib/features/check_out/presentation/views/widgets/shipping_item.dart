import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key, required this.title, required this.subTitle, required this.price});
  final String title, subTitle,price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        left: 13,
        right: 5,
        bottom: 16,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0x33D9D9D9),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: const ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xff949D9E),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subTitle,
                    style: TextStyles.regular13.copyWith(
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                '$price جنيه',
                style: TextStyles.bold13.copyWith(
                  color: const Color(0xff3A8B33),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
