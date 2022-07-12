import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/bari1.jpeg"),
          CardImage("assets/img/bari2.jpeg"),
          CardImage("assets/img/bari3.jpeg"),
          CardImage("assets/img/bari4.jpeg"),
          CardImage("assets/img/bari5.jpeg"),
        ],
      ),
    );
  }
}
