import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342/158,
        child: Stack(
          children: [
            Image.asset(Assets.imagesWaterMelonTest),
            Container(
              width: itemWidth/2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Svg(Assets.imagesFeaturedItem),
                  fit: BoxFit.fill
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25,),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 11,),
                    
                    const FeaturedItemButton(),
                    const SizedBox(height: 29,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
