import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/model/wisataModels.dart';
import 'package:helloproject/screen/detailWisata.dart';

class MenuWisata extends StatefulWidget {
  MenuWisata({Key? key}) : super(key: key);

  @override
  State<MenuWisata> createState() => _MenuWisataState();
}

class _MenuWisataState extends State<MenuWisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          title: Text(
        "Wisata Surabaya",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'poppins',
          color: Colors.lightBlue,
        ),
      )),
      body: ListView.builder(
          itemCount: TourismPlaceList.length,
          itemBuilder: (BuildContext context, int index) {
            final TourismPlace place = TourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return detailwisata(place: place);
                }));
              },
              child: listitem(place),
            );
          }),
    );
  }
}

Widget listitem(TourismPlace place) {
  return Card(
    margin: EdgeInsets.all(5),
    color: Colors.blue[400],
    shadowColor: Colors.grey,
    elevation: 10,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Image.asset(place.imageasset),
          title: Text(
            place.name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: Colors.white70),
          ),
          subtitle: Text(
            place.location,
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: Colors.black45),
          ),
        ),
      ],
    ),
  );
}
