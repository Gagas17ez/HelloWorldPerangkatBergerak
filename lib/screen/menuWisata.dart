import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/api/apiNEwisata.dart';
import 'package:helloproject/model/apiWisata.dart';
import 'package:helloproject/screentesting/detailapi.dart';
import 'package:helloproject/model/wisataModels.dart';
import 'package:helloproject/model/listItem.dart';
import 'package:helloproject/screen/donetourisimlist.dart';
import 'package:helloproject/screen/tourismList.dart';

class MenuWisata extends StatefulWidget {
  MenuWisata({Key? key}) : super(key: key);

  @override
  State<MenuWisata> createState() => _MenuWisataState();
}

class _MenuWisataState extends State<MenuWisata> {
  final List<TourismPlace> doneTourismPlaceList = [];

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
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.done_all_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DoneTourismList(
                          doneTourismPlaceList: doneTourismPlaceList);
                    }),
                  );
                })
          ],
        ),
        body: TourismList(doneTourismPlaceList: doneTourismPlaceList));
  }
}
