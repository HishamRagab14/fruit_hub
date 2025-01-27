import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/features/best_selling_feature/presentation/views/best_selling_view.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'الأكثر مبيعًا',
          style: TextStyles.bold16,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, BestSellingView.routeName);
          },
          child: Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(color: const Color(0xff949D9E)),
          ),
        )
      ],
    );
  }
}
