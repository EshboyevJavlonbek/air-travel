import 'package:air_travel/detail_page/presentation/widgets/travel_diary/day_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/flight_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/hotel_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/shrine_item.dart';
import 'package:flutter/material.dart';

class Daily extends StatelessWidget {
  const Daily({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 397,
      height: 552,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFC4C4C4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return DayItem(day: "1 Kun", data: "14okt");
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 5);
              },
            ),
          ),
          Column(
            children: [
              SizedBox(height: 30),
              FlightItem(from: "Toshkent", to: "Madina", hour: "8:30 am"),
              SizedBox(height: 30),
              HotelItem(hour: "11:30 am"),
              SizedBox(height: 30),
              ShrineItem(hour: "8:30 am"),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}