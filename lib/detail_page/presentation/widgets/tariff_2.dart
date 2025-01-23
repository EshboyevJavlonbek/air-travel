import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tariff2 extends StatelessWidget {
  const Tariff2({
    super.key,
    required this.title,
    required this.price1,
    required this.price2,
    required this.flight,
    required this.bus,
    required this.guide,
    required this.insurance,
  });

  final String title, price1, price2, flight, bus, insurance, guide;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 194,
          height: 254,
          decoration: BoxDecoration(
            color: Color(0xFF3BB77E),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFE4DC19).withValues(alpha: 1),
              width: 3,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    price2,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.white.withValues(alpha: 0.7)
                    ),
                  )
                ],
              ),
              Text(
                "Afzalliklari",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/plane.svg",
                    width: 14,
                    height: 13,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 2),
                  SizedBox(
                    width: 160,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      flight,
                      style: TextStyle(
                        color: Color(0xFFFAFAFA),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/bus.svg",
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: 2),
                  SizedBox(
                    width: 160,
                    child: Text(
                      overflow: TextOverflow.visible,
                      bus,
                      style: TextStyle(
                        color: Color(0xFFFAFAFA),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/medical.svg",
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: 2),
                  Text(
                    insurance,
                    style: TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/people.svg",
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: 2),
                  Text(
                    guide,
                    style: TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 56,
          top: -10,
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
