class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.rating,
      required this.description,
      required this.image});

  factory ProductModel.fromJson(JsonData) {
    return ProductModel(
      id: JsonData['id'] as int,
      title: JsonData['title'] as String,
      price: JsonData['price'] as double,
      description: JsonData['description'] as String,
      image: JsonData['image'] as String,
      rating: RatingModel.fromjson(JsonData['rating']) as RatingModel,
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(JsonData) {
    return RatingModel(
        count: JsonData['count'] as int, rate: JsonData['rate'] as double);
  }
}
