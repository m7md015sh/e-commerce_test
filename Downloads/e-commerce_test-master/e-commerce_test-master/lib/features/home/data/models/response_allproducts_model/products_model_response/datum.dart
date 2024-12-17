class Datum {
  int? id;
  int? storeId;
  int? categoryId;
  String? name;
  String? slug;
  String? disc;
  int? price;
  int? comparePrice;
  int? rating;
  dynamic options;
  String? type;
  String? status;
  String? imageUrl;

  Datum({
    this.id,
    this.storeId,
    this.categoryId,
    this.name,
    this.slug,
    this.disc,
    this.price,
    this.comparePrice,
    this.rating,
    this.options,
    this.type,
    this.status,
    this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        storeId: json['store_id'] as int?,
        categoryId: json['category_id'] as int?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        disc: json['disc'] as String?,
        price: json['price'] as int?,
        comparePrice: json['compare_price'] as int?,
        rating: json['rating'] as int?,
        options: json['options'] as dynamic,
        type: json['type'] as String?,
        status: json['status'] as String?,
        imageUrl: json['image_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'store_id': storeId,
        'category_id': categoryId,
        'name': name,
        'slug': slug,
        'disc': disc,
        'price': price,
        'compare_price': comparePrice,
        'rating': rating,
        'options': options,
        'type': type,
        'status': status,
        'image_url': imageUrl,
      };
}
