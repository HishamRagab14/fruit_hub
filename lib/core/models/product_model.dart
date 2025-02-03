import 'dart:io';

import 'package:fruits_hub_app/core/entities/product_entity.dart';
import 'package:fruits_hub_app/core/models/review_model.dart';



class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  String? imageUrl;
  final bool isFeatured;
  final int expireMonths;
  final bool isOrganic;
  final int noOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final List<ReviewModel> reviews;

  ProductModel(
      {required this.name,
      required this.price,
      required this.code,
      required this.description,
      required this.image,
      required this.isFeatured,
      this.imageUrl,
      required this.expireMonths,
      required this.noOfCalories,
      required this.unitAmount,
      this.isOrganic = false,
      required this.reviews});
  factory ProductModel.fromEntity(
      ProductEntity addProductInputEntity) {
    return ProductModel(
      name: addProductInputEntity.name,
      price: addProductInputEntity.price,
      code: addProductInputEntity.code,
      description: addProductInputEntity.description,
      image: addProductInputEntity.image,
      isFeatured: addProductInputEntity.isFeatured,
      imageUrl: addProductInputEntity.imageUrl,
      expireMonths: addProductInputEntity.expireMonths,
      noOfCalories: addProductInputEntity.noOfCalories,
      unitAmount: addProductInputEntity.unitAmount,
      isOrganic: addProductInputEntity.isOrganic,
      reviews: addProductInputEntity.reviews.map((e) => ReviewModel.fromEntity(e)).toList(),
    );
  }
  toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'description': description,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'expireMonths': expireMonths,
      'noOfCalories': noOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e)=> e.toJson()).toList(),
    };
  }
}
