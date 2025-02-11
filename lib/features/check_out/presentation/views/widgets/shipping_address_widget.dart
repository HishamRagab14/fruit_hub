import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/payment_item.dart';
import 'package:provider/provider.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل',
      child: Row(children: [
        SvgPicture.asset(Assets.imagesLocation),
        const SizedBox(
          width: 8,
        ),
        Text(
          context.read<OrderEntity>().shippingEntity.toString(),
          style: TextStyles.regular13.copyWith(
            color: const Color(0XFF4E5556),
          ),
        ),
        const Spacer(),
        SizedBox(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // context.read<PageController>().animateToPage(PageController().page!.toInt() - 1, duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
                  
                },
                child: SvgPicture.asset(Assets.imagesEdit),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'تعديل العنوان',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0XFF949D9E),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
