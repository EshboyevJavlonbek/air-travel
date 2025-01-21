import 'package:air_travel/core/client.dart';
import 'package:air_travel/home_page/data/models/home_page_model.dart';

class HomePageRepository{
  HomePageRepository({required this.client});

  final ApiClient client;
  List<HomePageModel> _homepage =[];

  Future<List<HomePageModel>> fetchHomePage({bool refresh = false}) async{
    if (_homepage.isNotEmpty && !refresh ){
      return _homepage;
    }

    List<dynamic> items = await client.fetchSpecialOffers();
    _homepage = items.map((item) => HomePageModel.fromJson(item)).toList();
    return _homepage;
  }
}