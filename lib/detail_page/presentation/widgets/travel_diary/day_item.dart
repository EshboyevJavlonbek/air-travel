import 'package:flutter/material.dart';

class DayItem extends StatelessWidget {
  const DayItem({
    super.key,
    required this.day,
    required this.data,
  });

  final String day, data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              data,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
