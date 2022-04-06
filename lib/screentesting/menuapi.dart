import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/api/apiNEwisata.dart';
import 'package:helloproject/model/apiWisata.dart';
import 'package:helloproject/screentesting/detailapi.dart';
import 'package:helloproject/model/wisataModels.dart';
import 'package:helloproject/model/listItem.dart';
import 'package:helloproject/screen/donetourisimlist.dart';

class MenuWisatapi extends StatefulWidget {
  MenuWisatapi({Key? key}) : super(key: key);

  @override
  State<MenuWisatapi> createState() => _MenuWisataState();
}

class _MenuWisataState extends State<MenuWisatapi> {
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text(
            "Wisata Surabaya But With API",
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
        body: Container(
          child: FutureBuilder(
              future: fetchWisata(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, index) {
                        Wisata wisata = snapshot.data[index];
                        return Card(
                            margin: EdgeInsets.all(5),
                            color: Colors.blue[400],
                            shadowColor: Colors.grey,
                            elevation: 10,
                            child: new InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return detailwisatapi(wisata: wisata);
                                }));
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading:
                                        Image.network("${wisata.imageasset}"),
                                    title: Text(
                                      "${wisata.name}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'poppins',
                                          color: Colors.white70),
                                    ),
                                    subtitle: Text(
                                      "${wisata.location}",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'poppins',
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      });
                }
                return CircularProgressIndicator();
              }),
        ));
  }
}
