import 'package:air_travel/detail_page/presentation/widgets/about_trip.dart';
import 'package:air_travel/detail_page/presentation/widgets/images_of_destination.dart';
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
                  """Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli),
                     Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati,
                      Zamzam suvi (5 litr)""",
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(children: [
              CalendarItem(title: "Madinada",duration: "10"),
              SizedBox(width: 5),
              CalendarItem(title: "Madinada",duration: "10"),
            ],),
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
            padding: const EdgeInsets.all(13),
            child: Daily(),
          ),
        ],
      ),
    );
  }
}
