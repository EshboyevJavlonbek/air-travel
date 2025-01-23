import 'package:air_travel/detail_page/presentation/widgets/about_trip.dart';
import 'package:air_travel/detail_page/presentation/widgets/bottom_nav_barr_detail_page.dart';
import 'package:air_travel/detail_page/presentation/widgets/images_of_destination.dart';
import 'package:air_travel/detail_page/presentation/widgets/tariff_2.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/daily.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../home_page/presentation/widgets/tour_pack_item/calendar_item.dart';
import '../../../home_page/presentation/widgets/tour_pack_item/ingredients.dart';
import '../../../home_page/presentation/widgets/tour_pack_item/topics.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/icons/back-arrow.svg",
          fit: BoxFit.none,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      extendBody: true,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ImagesOfDestination(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AboutTrip(
              title: "Umra Safari",
              description:
              "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati Zamzam suvi (5 litr)",
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                CalendarItem(title: "Madinada", duration: "10"),
                SizedBox(width: 5),
                CalendarItem(title: "Madinada", duration: "10"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Topics(title: "Sayohat Tarkibi"),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Ingredients(title: "Sug'urta"),
                SizedBox(width: 5),
                Ingredients(title: "Chipta"),
                SizedBox(width: 5),
                Ingredients(title: "Aviachipta"),
                SizedBox(width: 5),
                Ingredients(title: "Viza"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Topics(title: "Sayohat kundaligi"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Daily(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Topics(title: "Tariflar"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tariff2(
                title:"Ekonom",
                price1: "1200\$",
                price2: "1300\$",
                flight: "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent ",
                bus: "Zamonaviy va qulay avtobuslar",
                guide: "Tibbiy sug'urta",
                insurance: "Tajribali yo’l boshchi",),
              Tariff2(
                title: "Standart",
                price1: "1400\$",
                price2: "1600\$",
                flight: "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent ",
                bus: "Zamonaviy va qulay avtobuslar",
                guide: "Tibbiy sug'urta",
                insurance: "Tajribali yo’l boshchi",),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBarrDetailPage(price: "1200\$"),
    );
  }
}
