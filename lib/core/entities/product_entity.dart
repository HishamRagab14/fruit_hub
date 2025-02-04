
import 'package:fruits_hub_app/core/entities/review_entity.dart';


class ProductEntity {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;
  String? imageUrl;
  final int expireMonths;
  final bool isOrganic;
  final int noOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.isFeatured,
    this.imageUrl,
    required this.expireMonths,
    required this.noOfCalories,
    required this.unitAmount,
    this.isOrganic = false,
    required this.reviews,
  });
}
