import 'package:air_travel/home_page/presentation/widgets/popular_places.dart';
import 'package:air_travel/home_page/presentation/widgets/search_item.dart';
import 'package:air_travel/home_page/presentation/widgets/topics.dart';
import 'package:air_travel/home_page/presentation/widgets/main_discount/discount.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/tour_package_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_navigation_barr.dart';
import 'offer_items.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchItem(),
                SizedBox(height: 15),
                OfferItems(),
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
            padding: const EdgeInsets.only(top: 10,left: 55, right: 55,),
            child: TourPackageItem(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


