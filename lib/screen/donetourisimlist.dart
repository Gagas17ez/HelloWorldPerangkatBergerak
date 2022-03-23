import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:helloproject/model/wisataModels.dart';

class DoneTourismList extends StatelessWidget {
  final List<TourismPlace> doneTourismPlaceList;
  const DoneTourismList({
    Key? key,
    required this.doneTourismPlaceList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text(
          "Wisata sudah dikunjungi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
            color: Colors.lightBlue,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: doneTourismPlaceList.length,
          itemBuilder: (context, index) {
            final TourismPlace place = doneTourismPlaceList[index];
            return Card(
              // color: isDone ? Colors.white : Colors.white,
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
                  ListTile(
                    leading: const Icon(Icons.done_all_outlined),
                    title: Text(
                      "Visided in : 23/01/2069",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          color: Colors.white70),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
