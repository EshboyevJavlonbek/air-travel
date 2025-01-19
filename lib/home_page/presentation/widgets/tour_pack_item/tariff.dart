import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/additional.dart';
import 'package:air_travel/home_page/presentation/widgets/tour_pack_item/ingredients.dart';
import 'package:flutter/material.dart';

class Tariff extends StatelessWidget {
  const Tariff({
    super.key,
    required this.title,
    required this.price1,
    required this.price2,
  });

  final String title, price1, price2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 83,
          decoration: BoxDecoration(
            color: Color(0xFF3BB77E),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 8,
          left: 42,
          child: Text(
            price1,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 88,
          child: Text(
            price2,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 9,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 28,
          left: 46,
          child: Text(
            "Afzalliklari",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700,
              fontSize: 7,
            ),
          ),
        ),
        Positioned(
            top: -10,
            left: 35,
            child: Container(
              alignment: Alignment.center,
              width: 65,
              height: 19,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFF069C57),
                    width: 1,
                  )),
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFF3BB77E),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )),
        Positioned(
          top: 34,
          left: 10,
          child: Ingredients(title: "Transport Xizmati"),
        ),
        Positioned(
          top: 52,
          left: 14,
          child: Ingredients(title: "Nonushta"),
        ),
        Positioned(
          top: 52,
          left: 90,
          child: Additional(),
        ),

      ],
    );
  }
}
