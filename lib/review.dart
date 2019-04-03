import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage;
  String userName;
  int reviews;
  int numberOfPhotos;
  String comment;
  Review(this.pathImage, this.userName, this.reviews, this.numberOfPhotos, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        size: 15,
        color: Color(0xFF2f2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        size: 15,
        color: Color(0xFF2f2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        size: 15,
        color: Color(0xFF2f2C611),
      ),
    );



    final userNameC = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        userName,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfoC = Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  left: 20.0
              ),
              child: Text(
                reviews.toString()+" reviews "+numberOfPhotos.toString()+" photos",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 10.0,
                    color: Color(0xFFa3a5a7)
                ),
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

        ]
    );


    final userCommentC = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    ); //Container

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),
    );



    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userNameC,
        userInfoC,
        userCommentC
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}