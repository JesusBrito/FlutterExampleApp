import 'package:flutter/material.dart';
import 'package:flutter_app/button_purple.dart';
class DescriptionPlace extends StatelessWidget{
  String descriptionPlace;
  String namePlace;
  int numberOfStars;


  DescriptionPlace(this.descriptionPlace, this.namePlace, this.numberOfStars);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFF2f2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFF2f2C611),
      ),
    );


    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFF2f2C611),
      ),
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final titile_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titile_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}