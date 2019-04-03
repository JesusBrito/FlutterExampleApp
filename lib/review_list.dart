import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/people.jpg", "JesusBB", 2, 3, "ok"),
        new Review("assets/img/people.jpg", "JesusBB", 2, 3, "ok"),
        new Review("assets/img/people.jpg", "JesusBB", 2, 3, "ok"),
        new Review("assets/img/people.jpg", "JesusBB", 2, 3, "ok"),
        new Review("assets/img/people.jpg", "JesusBB", 2, 3, "ok"),
      ],
    );
  }
}