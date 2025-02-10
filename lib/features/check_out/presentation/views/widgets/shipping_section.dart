import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/features/check_out/domain/entities/order_entity.dart';
import 'package:fruits_hub_app/features/check_out/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var orderEntity = context.read<OrderEntity>();
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            setState(() {});
            orderEntity.payCash = true;
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          price: (orderEntity.cartEntity.calculateTotalPrice() + 40).toString(),
          subTitle: 'التسليم من المكان',
        ),
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            setState(() {});
            orderEntity.payCash = false;
          },
          isSelected: selectedIndex == 1,
          title: 'دفع الكتروني',
          price: context
              .read<OrderEntity>()
              .cartEntity
              .calculateTotalPrice()
              .toString(),
          subTitle: 'يرجي تحديد طريقه الدفع',
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
