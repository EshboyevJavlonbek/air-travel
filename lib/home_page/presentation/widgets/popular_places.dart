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
          PopularPlacesItem(title: "Dubai", image: "assets/images/places/dubai.png")
        ],
      ),
    );
  }
}

class PopularPlacesItem extends StatelessWidget {
  const PopularPlacesItem(
      {super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            width: 104,
            height: 52,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}