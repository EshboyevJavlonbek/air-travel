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
          width: 127,
          height: 90,
          decoration: BoxDecoration(
            color: Color(0xFF3BB77E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 5,
                children: [
                  Text(
                    price1,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    price2,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 3)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Afzalliklari",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
              Ingredients(title: "Transport Xizmati"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ingredients(title: "Nonushta"),
                  Additional(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -13,
          left: 32,
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
          ),
        ),
      ],
    );
  }
}
