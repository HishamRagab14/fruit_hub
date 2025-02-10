import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/payment_item.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xff4E5556),
                ),
              ),
              const Spacer(),
              const Text(
                '150 جنيه',
                style: TextStyles.semiBold16,
              )
            ],
          ),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xff4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '30 جنيه',
                style: TextStyles.semiBold16.copyWith(
                  color: const Color(0xff4E5556),
                ),
              ),
            ],
          ),
          const SizedBox(height: 9,),
          const Divider(
            thickness: 0.5,
            color: Color(0xffCACECE),
          ),
          const SizedBox(height: 9,),
          const Row(
            children: [
            Text('الكلي',style: TextStyles.bold16,),
            Spacer(),
            Text('180 جنيه',style: TextStyles.bold16,),
          ])
        ],
      ),
    );
  }
}