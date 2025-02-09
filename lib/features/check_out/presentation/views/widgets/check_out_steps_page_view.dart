import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/address_input_section.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      itemCount: getPages().length,
      itemBuilder: (context, index) {
        return getPages()[index];
      },
    );
  }

  List<Widget> getPages() {
    return [
      const ShippingSection(),
      const AddressInputSection(),
      const ShippingSection(),
      const ShippingSection(),
    ];
  }
}
