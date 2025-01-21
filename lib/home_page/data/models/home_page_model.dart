class HomePageModel {
  final int id, order;
  final String image;

  HomePageModel({
    required this.id,
    required this.image,
    required this.order,
  });

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        id: json['id'],
        image: json['image'],
        order: json['order'],
      );
}
