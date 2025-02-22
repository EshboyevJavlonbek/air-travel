import 'package:air_travel/home_page/presentation/pages/home_page_view_model.dart';
import 'package:air_travel/home_page/presentation/widgets/bottom_navigation_barr.dart';
import 'package:flutter/material.dart';

import '../widgets/main_discount/discount.dart';
import '../widgets/offer_items.dart';
import '../widgets/popular_places.dart';
import '../widgets/search_item.dart';
import '../widgets/topics.dart';
import '../widgets/tour_pack_item/tour_package_item.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
    required this.viewModel,
  });

  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchItem(),
                  SizedBox(height: 15),
                  SpecialOffers(specialOffers: viewModel.specialOffers),
                  SizedBox(height: 15),
                  Topics(title: "Mashhur Joylar"),
                  SizedBox(height: 15),
                  PopularPlaces(),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Discount(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 55,
                right: 55,
              ),
              child: TourPackageItem(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
