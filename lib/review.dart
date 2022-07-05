import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/rick.png";
  String name = "Nicolás Scandizzo";
  String details = "1 review - 5 photos";
  String comment = "There is an amazing place in Argentina";


  Review(this.pathImage, this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(name),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      ],
    );


    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(pathImage))),
    );


    return Row(
      children: <Widget>[
        photo
      ],
    );
  }
}
