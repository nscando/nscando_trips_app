import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void onPressedFav() {

    setState((){
      _pressed = !this._pressed;
    });


    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: _pressed ?  const Text("Added to your favorites!"):
        const Text("Deleted from your favorites!")
        ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: _pressed ? Icon(Icons.favorite):
      const Icon(Icons.favorite_border),
    );
  }
}
