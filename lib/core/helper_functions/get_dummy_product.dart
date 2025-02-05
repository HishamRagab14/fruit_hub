import 'package:fruits_hub_app/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Product Name',
    price: 10.0,
    code: 'Product Code',
    description: 'Product description',
    imageUrl: null,
    isFeatured: true,
    expireMonths: 12,
    noOfCalories: 100,
    unitAmount: 1,
    isOrganic: true,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
