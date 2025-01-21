import 'package:flutter/material.dart';

class ImagesOfDestination extends StatelessWidget {
  const ImagesOfDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 428,
      height: 311,
      child: PageView(
        children: [
          Image(image: AssetImage("assets/images/offers/offers_1.jpg"), width: 428,height: 311,fit: BoxFit.cover,),
          Image(image: AssetImage("assets/images/offers/offers_2.jpg"), width: 428,height: 311,fit: BoxFit.cover,),
          Image(image: AssetImage("assets/images/offers/offers_3.jpg"), width: 428,height: 311,fit: BoxFit.cover,),
          Image(image: AssetImage("assets/images/offers/offers_4.jpg"), width: 428,height: 311,fit: BoxFit.cover,),
          Image(image: AssetImage("assets/images/offers/offers_5.jpg"), width: 428,height: 311,fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
