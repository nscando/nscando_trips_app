import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Most Popular";
  double heigth = 0.0;

  GradientBack(this.title, this.heigth);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4568D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      alignment: Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white70,
            fontSize: 30.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
