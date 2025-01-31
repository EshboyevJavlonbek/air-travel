class PopularPlacesModel {
  final int id, order;
  final String image, title;

  PopularPlacesModel({
    required this.id,
    required this.title,
    required this.image,
    required this.order,
  });

  factory PopularPlacesModel.fromJson(Map<String, dynamic> json) {
    return PopularPlacesModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      order: json['order'],
    );
  }
}
