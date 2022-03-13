import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/model/wisataModels.dart';
import 'package:helloproject/screen/detailWisata.dart';

class detailwisata extends StatelessWidget {
  const detailwisata({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageasset),
            Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 5),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins',
                    color: Colors.lightBlue,
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: <Widget>[
                    Icon(
                      Icons.calendar_today_sharp,
                      color: Colors.white70,
                    ),
                    Text(
                      place.open,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Colors.white70,
                    ),
                    Text(
                      place.time,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Icon(
                      Icons.attach_money,
                      color: Colors.white70,
                    ),
                    Text(
                      place.price,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70),
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.all(10),
              child: ListView(
                // padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      place.img1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      place.img2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.asset(
                      place.img3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
