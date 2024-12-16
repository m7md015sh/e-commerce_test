class FlashSaleModel {
  final String imageUrl;
  final String brand;
  final String name;
  final double price;
  final double originalPrice;
  final int discount;

  FlashSaleModel({
    required this.imageUrl,
    required this.brand,
    required this.name,
    required this.price,
    required this.originalPrice,
    required this.discount,
  });
}
