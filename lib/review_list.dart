import 'package:flutter/material.dart';
import 'package:nscando_trips_app/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Review("assets/img/rick.png", "Nicolás Scandizzo", "2 reviews - 5 photos", "Excelente lugar!"),
       Review("assets/img/rick.png", "Matias Scandizzo", "7 reviews - 5 photos", "Excelente lugar!"),
       Review("assets/img/rick.png", "Angeles Giaco", "1 reviews - 5 photos", "Excelente lugar!"),
      ],
    );
  }

}