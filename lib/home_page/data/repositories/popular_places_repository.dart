import 'package:air_travel/core/client.dart';
import 'package:air_travel/home_page/data/models/popular_places_model.dart';

class PopularPlacesRepository{
  PopularPlacesRepository({required this.client});

  final ApiClient client;

  List<PopularPlacesModel> popularPlaces = [];

  Future<List<PopularPlacesModel>> fetchPopularPlaces() async{
    if (popularPlaces.isNotEmpty) return popularPlaces;

    var rawPopularPlaces = await client.fetchPopularPlaces();
    popularPlaces = rawPopularPlaces.map((place) => PopularPlacesModel.fromJson(place)).toList();
    popularPlaces.sort((a,b) => a.order - b.order);
    return popularPlaces;
  }
}