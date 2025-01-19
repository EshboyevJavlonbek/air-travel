import 'package:air_travel/home_page/presentation/widgets/topics.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/additional.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/calendar_item.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/detail.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/ingredients.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/main_image.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/tariff.dart';
import 'package:flutter/material.dart';

class TourPackageItem extends StatelessWidget {
  const TourPackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 302,
      height: 529,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainImage(
              image: "assets/myassets/makka2.png",
              duration: "14 kun",
              landing: "14 Okt",
              flight: "27 Okt"),
          SizedBox(height: 5),
          Topics(title: "Umra Safari"),
          SizedBox(height: 5),
          Row(
            children: [
              CalendarItem(title: "Madinada", duration: "10"),
              SizedBox(width: 5),
              CalendarItem(title: "Makkada", duration: "5"),
            ],
          ),
          SizedBox(height: 5),
          Topics(title: "Sayohat Tarkibi"),
          SizedBox(height: 5),
          Row(
            children: [
              Ingredients(title: "Sug'urta"),
              SizedBox(width: 5),
              Ingredients(title: "Chipta"),
              SizedBox(width: 5),
              Ingredients(title: "Viza"),
              SizedBox(width: 5),
              Additional(),
            ],
          ),
          SizedBox(height: 5),
          Topics(title: "Tariflar"),
          SizedBox(
            height: 149,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Tariff(title: "Ekonom", price1: "1200", price2: "1300"),
                Tariff(title: "Standart", price1: "1400", price2: "1600"),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Detail(),
          )
        ],
      ),
    );
  }
}
