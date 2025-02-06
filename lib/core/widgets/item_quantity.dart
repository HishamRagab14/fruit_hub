import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({
    super.key,
  });

  @override
  State<ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: buildQuantityButton(
              icon: Icons.add,
              circleColor: AppColors.primaryColor,
              iconColor: Colors.white),
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          quantity.toString(),
          style: TextStyles.bold16,
        ),
        const SizedBox(
          width: 14,
        ),
        GestureDetector(
          onTap: () {
            if (quantity > 0) {
              setState(() {
                quantity--;
              });
            }
          },
          child: const Icon(
            Icons.remove,
            color: Color(0xff979899),
          ),
        ),
      ],
    );
  }

  Widget buildQuantityButton(
      {required IconData icon,
      required Color circleColor,
      required Color iconColor}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
