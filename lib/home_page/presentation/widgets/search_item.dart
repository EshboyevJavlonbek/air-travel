import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          width: 326,
          height: 53,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/icons/search.svg",
                width: 16,
                height: 16,

              ),
              Container(
                width: 222,
                height: 20,
                decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/filter.svg",
                width: 13,
                height: 15,
                fit: BoxFit.none,
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          "assets/icons/notifications.svg",
          width: 17,
          height: 25,
          fit: BoxFit.none,
        ),
      ],
    );
  }
}
