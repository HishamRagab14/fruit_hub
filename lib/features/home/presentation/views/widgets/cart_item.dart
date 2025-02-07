import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/custom_network_image.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            height: 73,
            width: 92,
            decoration: const BoxDecoration(
              color: Color(0xfff3f5f7),
            ),
            child: const CustomNetworkImage(imageUrl: 'https://static.vecteezy.com/system/resources/previews/024/183/525/original/avatar-of-a-man-portrait-of-a-young-guy-illustration-of-male-character-in-modern-color-style-vector.jpg'),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'بطيخ ',
                      style: TextStyles.bold13,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.imagesTrash),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
