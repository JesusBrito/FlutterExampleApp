import 'package:flutter/material.dart';
import 'package:flutter_app/home_trip.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/search_trips.dart';

class LogicTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LogicTrips();
  }

}

class _LogicTrips extends State<LogicTrips>{
  int indexTab = 0;
  final List<Widget> widgetsChildren = [
    HomeTrip(),
    SearchTrips(),
    Profile()
  ];
  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      body: widgetsChildren[indexTab] ,
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
                  primaryColor: Colors.purple
            ),
            child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTab,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      title: Text(
                          "Home"
                      )
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      title: Text(
                          "Search"
                      )
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      title: Text(
                          "Profile"
                      )
                  )
                ]
            )
        ),
    );
  }
}
