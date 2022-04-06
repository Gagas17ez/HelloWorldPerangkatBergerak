import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/api/apiNEwisata.dart';
import 'package:helloproject/model/apiWisata.dart';
import 'package:helloproject/screentesting/detailapi.dart';
import 'package:helloproject/model/wisataModels.dart';
import 'package:helloproject/model/listItem.dart';
import 'package:helloproject/screentesting/donetourismclone.dart';
import 'package:helloproject/screen/tourismList.dart';

class MenuWisataclone extends StatefulWidget {
  MenuWisataclone({Key? key}) : super(key: key);

  @override
  State<MenuWisataclone> createState() => _MenuWisataStateclone();
}

class _MenuWisataStateclone extends State<MenuWisataclone> {
  final List<Wisata> doneTourismPlaceList = [];

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
        body: Container(
          child: FutureBuilder(
              future: fetchWisata(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final Wisata wisata = snapshot.data[index];
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
                              child: ListItem(
                                  place: wisata,
                                  isDone: doneTourismPlaceList.contains(wisata),
                                  onCheckboxClick: (bool? value) {
                                    setState(() {
                                      if (value != null) {
                                        value
                                            ? doneTourismPlaceList.add(wisata)
                                            : doneTourismPlaceList
                                                .remove(wisata);
                                      }
                                    });
                                  }),
                            ));
                      });
                }
                return CircularProgressIndicator();
              }),
        ));
  }
}
