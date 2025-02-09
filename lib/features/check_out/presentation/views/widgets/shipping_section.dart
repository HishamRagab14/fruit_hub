import 'package:flutter/widgets.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            setState(() {
              
            });
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          price: '40',
          subTitle: 'التسليم من المكان',
        ),
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            setState(() {
              
            });
          },
          isSelected: selectedIndex == 1,
          title: 'دفع الكتروني',
          price: '0',
          subTitle: 'يرجي تحديد طريقه الدفع',
        ),
      ],
    );
  }
}
