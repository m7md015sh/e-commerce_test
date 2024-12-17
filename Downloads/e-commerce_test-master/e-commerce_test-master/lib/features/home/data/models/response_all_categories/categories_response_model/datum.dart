class Datum {
  int? id;
  dynamic parentId;
  String? name;
  String? slug;
  String? disc;
  String? status;
  String? imageUrl;

  Datum({
    this.id,
    this.parentId,
    this.name,
    this.slug,
    this.disc,
    this.status,
    this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        parentId: json['parent_id'] as dynamic,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        disc: json['disc'] as String?,
        status: json['status'] as String?,
        imageUrl: json['image_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_id': parentId,
        'name': name,
        'slug': slug,
        'disc': disc,
        'status': status,
        'image_url': imageUrl,
      };
}
