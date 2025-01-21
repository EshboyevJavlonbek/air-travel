import 'package:air_travel/home_page/presentation/widgets/popular_places_item.dart';
import 'package:flutter/material.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularPlacesItem(title: "Paris", image: "assets/images/places/paris.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Makka", image: "assets/images/places/makka.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Malayzia", image: "assets/images/places/malayziya.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Dubai", image: "assets/images/places/dubai.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Paris", image: "assets/images/places/paris.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Makka", image: "assets/images/places/makka.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Malayzia", image: "assets/images/places/malayziya.png"),
          SizedBox(width: 10),
          PopularPlacesItem(title: "Dubai", image: "assets/images/places/dubai.png"),
        ],
      ),
    );
  }
}

