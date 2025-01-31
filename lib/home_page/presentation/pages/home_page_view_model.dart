import 'package:air_travel/home_page/data/models/special_offers_model.dart';

import 'package:flutter/cupertino.dart';

import '../../data/models/popular_places_model.dart';
import '../../data/repositories/popular_places_repository.dart';
import '../../data/repositories/special_offer_repository.dart';

class HomePageViewModel extends ChangeNotifier {
  HomePageViewModel({
    required SpecialOffersRepository specOffRepo,
    required PopularPlacesRepository popPlaceRepo,
  })  : _specOffRepo = specOffRepo,
        _popPlaceRepo = popPlaceRepo {
    load();
  }

  final SpecialOffersRepository _specOffRepo;
  final PopularPlacesRepository _popPlaceRepo;

  List<SpecialOfferModel> specialOffers = [];
  List<PopularPlacesModel> popularPlaces = [];

  Future<void> load() async{
    specialOffers = await _specOffRepo.fetchSpecialOffers();
    popularPlaces = await _popPlaceRepo.fetchPopularPlaces();
    notifyListeners();
  }
}
