import 'dart:io';

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
  final int sellingCount;

  ProductModel({
    required this.name,
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
    required this.reviews,
    this.sellingCount = 0,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        image: File(json['imageUrl']),
        name: json['name'],
        price: json['price'],
        code: json['code'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        isFeatured: json['isFeatured'],
        expireMonths: json['expireMonths'],
        noOfCalories: json['noOfCalories'],
        unitAmount: json['unitAmount'],
        isOrganic: json['isOrganic'],
        reviews: json['reviews'] != null ?
             List<ReviewModel>.from(
                json['reviews'].map(
                  (e) => ReviewModel.fromJson(e),
                ),
              )
            : [],
        sellingCount: json['sellingCount']);
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
      'reviews': reviews.map((e) => e.toJson()).toList(),
      'sellingCount': sellingCount
    };
  }
}
