class CartItem {
  final String id;
  final String title;
  int amount;
  final double price;
  CartItem(
      {required this.id,
      required this.title,
      required this.amount,
      required this.price});

  void incrementAmount() {
    amount++;
    print("The cart item {$title} amount is incremented {$amount}");
  }
}
