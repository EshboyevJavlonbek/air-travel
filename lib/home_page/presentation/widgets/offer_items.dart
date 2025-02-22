import 'package:flutter/material.dart';

import '../../data/models/special_offers_model.dart';

class SpecialOffers extends StatefulWidget {
  const SpecialOffers({
    super.key,
    required this.specialOffers,
  });

  final List<SpecialOfferModel> specialOffers;

  @override
  State<SpecialOffers> createState() => _SpecialOffersState();
}

class _SpecialOffersState extends State<SpecialOffers> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 380 ,
          height: 120 ,
          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: (index) {
                  currentIndex = index % widget.specialOffers.length;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  final actualIndex = index % widget.specialOffers.length;
                  return Image.asset(
                    widget.specialOffers[actualIndex].image,
                    fit: BoxFit.cover,
                  );
                },
              ),
              IndexIndicatorContainer(
                length: widget.specialOffers.length,
                currentIndex: currentIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IndexIndicatorContainer extends StatelessWidget {
  const IndexIndicatorContainer({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 12,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          height: 8,
          padding: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            spacing: 3,
            children: List<Widget>.generate(
              length,
                  (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: index == currentIndex ? 16 : 4,
                height: 4,
                decoration: BoxDecoration(
                  color: index == currentIndex ? Colors.greenAccent : Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

