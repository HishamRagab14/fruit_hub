import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          title: 'الدفع عند الاستلام',
          price: '40',
          subTitle: 'التسليم من المكان',
        ),
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          title: 'دفع الكتروني',
          price: '0',
          subTitle: 'يرجي تحديد طريقه الدفع',
        ),
      ],
    );
  }
}
