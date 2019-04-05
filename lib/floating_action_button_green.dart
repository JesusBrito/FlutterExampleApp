import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _isPressed = false;
  void onPressedFav(){
    setState(() {
      _isPressed = !this._isPressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final fav = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._isPressed ? Icons.favorite : Icons.favorite_border
      ),
    );

    return fav;
  }
}