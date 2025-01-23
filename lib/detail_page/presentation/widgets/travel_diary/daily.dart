import 'package:air_travel/detail_page/presentation/widgets/travel_diary/day_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/flight_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/hotel_item.dart';
import 'package:air_travel/detail_page/presentation/widgets/travel_diary/shrine_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  FlightItem(from: "Toshkent", to: "Madina", hour: "8:30 am"),
                  Positioned(
                    top: 14,
                    left: -26,
                    child: Container(
                      alignment: Alignment.center,
                      width: 51,
                      height: 53,
                      decoration: BoxDecoration(
                          color: Color(0xFF3BB77E),
                          borderRadius: BorderRadius.circular(100)),
                      child: SvgPicture.asset(
                        "assets/icons/plane.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  HotelItem(hour: "11:30 am"),
                  Positioned(
                    top: 14,
                    left: -26,
                    child: Container(
                      alignment: Alignment.center,
                      width: 51,
                      height: 53,
                      decoration: BoxDecoration(
                          color: Color(0xFF3BB77E),
                          borderRadius: BorderRadius.circular(100)),
                      child: SvgPicture.asset(
                        "assets/icons/hotel.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ShrineItem(hour: "8:30 am"),
                  Positioned(
                    top: 14,
                    left: -26,
                    child: Container(
                      alignment: Alignment.center,
                      width: 51,
                      height: 53,
                      decoration: BoxDecoration(
                          color: Color(0xFF3BB77E),
                          borderRadius: BorderRadius.circular(100)),
                      child: SvgPicture.asset(
                        "assets/icons/ziyoratgoh.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
