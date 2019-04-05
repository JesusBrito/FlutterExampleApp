import 'package:flutter/material.dart';
import 'package:flutter_app/description_place.dart';
import 'review_list.dart';
import 'header_app_bar.dart';

class HomeTrip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) ", "Cancún",5),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}