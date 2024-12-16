class Datum {
  int? id;
  String? imageUrl;

  Datum({this.id, this.imageUrl});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        imageUrl: json['image_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image_url': imageUrl,
      };
}
