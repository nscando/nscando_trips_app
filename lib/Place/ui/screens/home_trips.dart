import 'package:flutter/material.dart';
import 'package:nscando_trips_app/Place/ui/widgets/review_list.dart';

import '../widgets/description_place.dart';
import 'header_appbar.dart';


class HomeTrips extends StatelessWidget{
  String descriptionDummy =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit tincidunt, risus at dictum hendrerit facilisis fringilla molestie elementum mollis, non. \nrisus at dictum hendrerit facilisis fringilla molestie elementum mollis, non.";


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bariloche", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppbar(),
      ],
    );
  }

}