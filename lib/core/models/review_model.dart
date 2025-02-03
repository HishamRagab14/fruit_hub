import 'package:fruits_hub_app/core/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final String review;
  final num rating;
  final String date;

  ReviewModel(
      {required this.name,
      required this.image,
      required this.review,
      required this.rating,
      required this.date});
  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
        name: reviewEntity.name,
        image: reviewEntity.image,
        review: reviewEntity.review,
        rating: reviewEntity.rating,
        date: reviewEntity.date);
  }
  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        name: json['name'],
        image: json['image'],
        review: json['review'],
        rating: json['rating'],
        date: json['date']);
  }
  toJson() {
    return {
      'name': name,
      'image': image,
      'review': review,
      'rating': rating,
      'date': date,
    };
  }
}
