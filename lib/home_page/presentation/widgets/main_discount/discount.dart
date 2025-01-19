import 'package:air_travel/home_page/presentation/widgets/main_discount/timer_of_discount.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/tour_package_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 427,
      height: 634,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [
            Color(0xFFF6980A),
            Color(0xFF3BB756),
          ],
        ),
      ),
      child: Column(
        children: [
          TimerOfDiscount(),
          SizedBox(
            height: 529,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TourPackageItem(),
                SizedBox(width: 10),
                TourPackageItem(),
                SizedBox(width: 10),
                TourPackageItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
