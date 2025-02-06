import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/entities/product_detail_entity.dart';
import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text_styles.dart';
import 'package:fruits_hub_app/core/utils/assets.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/fruit_item_list_tile.dart';
import 'package:fruits_hub_app/core/widgets/product_detail_list_tile.dart';

class FruitItemDetailsBody extends StatelessWidget {
  const FruitItemDetailsBody({super.key, required this.productEntity});
  final ProductEntity productEntity;
  static const List<ProductDetailEntity> productDetailEntity = [
    ProductDetailEntity(
        title: 'عام', image: Assets.imagesCalendar, subTitle: 'الصلاحيه'),
    ProductDetailEntity(
        title: '100%', image: Assets.imagesOrganic, subTitle: 'اورجانيك'),
    ProductDetailEntity(
        title: '80 كالوري', image: Assets.imagesFire, subTitle: '100 جرام'),
    ProductDetailEntity(
        title: '4.8', image: Assets.imagesStar, subTitle: 'التقييم'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: BottomCurvedClipper(),
              child: Container(
                height: 260, // Background height
                width: double.infinity,
                color: Colors.grey.shade200, // Background color
              ),
            ),
            Positioned(
              top: 25,
              left: 35,
              right: 0,
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(productEntity.imageUrl!),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: FruitItemListTile(productEntity: productEntity),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RatingWidget(productEntity: productEntity),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            productEntity.description,
            style: TextStyles.bold13.copyWith(color: const Color(0xff979899)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              mainAxisExtent: 60,
            ),
            itemBuilder: (context, index) => ProductDetailListTile(
              image: productDetailEntity[index].image,
              title: productDetailEntity[index].title,
              subTitle: productDetailEntity[index].subTitle,
            ),
          ),
        ),
        const SizedBox(
          height: 20,),
        // const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(
            text: 'أضف الى السلة',
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.productEntity,
  });

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          productEntity.avgRating.toString(),
          style: TextStyles.semiBold13,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${productEntity.ratingCount})',
          style: TextStyles.regular13.copyWith(color: const Color(0xff9796A1)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          'المراجعه',
          style: TextStyles.bold13.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}

class BottomCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
