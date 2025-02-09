import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          isSelected: true,
          title: 'الدفع عند الاستلام',
          price: '40',
          subTitle: 'التسليم من المكان',
        ),
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          isSelected: false,
          title: 'دفع الكتروني',
          price: '0',
          subTitle: 'يرجي تحديد طريقه الدفع',
        ),
      ],
    );
  }
}
