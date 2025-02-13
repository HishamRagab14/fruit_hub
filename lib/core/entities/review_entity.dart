class ReviewEntity {
  final String name;
  final String image;
  final String review;
  final num rating;
  final String date;

  ReviewEntity(
      {required this.name,
      required this.image,
      required this.review,
      required this.rating,
      required this.date});
}
