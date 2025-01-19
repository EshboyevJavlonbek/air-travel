import 'package:flutter/material.dart';

class Additional extends StatelessWidget {
  const Additional({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      width: 33,
      height: 19,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xFF3BB77E),
            width: 1,
          )),
      child: Container(
        alignment: Alignment.center,
        width: 29,
        height: 15,
        decoration: BoxDecoration(
          color: Color(0xFF3BB77E),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          "6 +",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
