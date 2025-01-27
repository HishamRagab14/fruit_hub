import 'package:fruits_hub_app/core/utils/assets.dart';

class BottomNavigationBarEntity {
  final String name;
  final String activeImage, inActiveImage;

  BottomNavigationBarEntity(
      {required this.name,
      required this.activeImage,
      required this.inActiveImage});

}
List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
        BottomNavigationBarEntity(
          name: 'الرئيسية',
          activeImage: Assets.imagesActiveHome,
          inActiveImage: Assets.imagesHome,
        ),
        BottomNavigationBarEntity(
          name: 'المنتجات',
          activeImage: Assets.imagesActiveElement,
          inActiveImage: Assets.imagesElement3,
        ),
        BottomNavigationBarEntity(
          name: 'سلة التسوق',
          activeImage: Assets.imagesActiveCart,
          inActiveImage: Assets.imagesShoppingCart,
        ),
        BottomNavigationBarEntity(
          name: 'حسابي',
          activeImage: Assets.imagesActivePerson,
          inActiveImage: Assets.imagesPerson,
        ),
      ];
