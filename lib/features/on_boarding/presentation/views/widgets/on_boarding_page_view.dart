import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      
      // reverse: true,
      children:  [
        PageViewItem(
          isVisible: true,
          // isVisible: (pageController.hasClients? pageController.page!.round() : 0) ==0 ,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          image: Assets.imagesPageViewItem1Image,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title:   Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text('مرحبا بك فى ',style:TextStyles.bold23 ,), Text('HUB',style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor),), Text('Fruit',style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),)],
          ),
        ),
        PageViewItem(
          isVisible: false,
          // isVisible: (pageController.hasClients? pageController.page!.round() : 0) == 1,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          image: Assets.imagesPageViewItem2Image,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title:  Text('ابحث وتسوق',style: TextStyles.bold23.copyWith(color: const Color(0xff0C0D0D)),)
        ),
      ],
    );
  }
}
