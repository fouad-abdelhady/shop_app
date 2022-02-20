class Products {
  final String productId;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  bool isFavourite;

  Products(
      {required this.productId,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.price,
      this.isFavourite = false});
}
