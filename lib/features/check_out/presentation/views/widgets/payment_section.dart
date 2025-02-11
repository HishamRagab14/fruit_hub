import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/order_summary_widget.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_address_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderSummaryWidget(),
        SizedBox(
          height: 16,
        ),
        ShippingAddressWidget(),
      ],
    );
  }
}
