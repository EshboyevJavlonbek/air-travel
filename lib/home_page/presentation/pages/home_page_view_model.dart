import 'package:air_travel/home_page/data/models/home_page_model.dart';
import 'package:air_travel/home_page/data/repositories/hom_page_repository.dart';
import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier {
  HomePageViewModel({required HomePageRepository repo}) : _repo = repo {
    load();
  }

  final HomePageRepository _repo;

  List<HomePageModel> homepage = [];
  HomePageModel? mainHomePage;

  Future<void> load() async{
    homepage = await _repo.fetchHomePage();
    notifyListeners();
  }
}
