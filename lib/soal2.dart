import 'dart:developer';

import 'package:flutter/material.dart';

class detailwisata extends StatelessWidget {
  const detailwisata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Detailkapalselam(title: 'Surabaya Submarine Monument'),
    );
  }
}

class Detailkapalselam extends StatefulWidget {
  Detailkapalselam({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Detailkapalselam> createState() => _DetailkapalselamState();
}

class _DetailkapalselamState extends State<Detailkapalselam> {
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/img/kapalselam.jpg'),
            Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 5),
                child: Text(
                  "Surabaya Submarine Monument",
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
                      color: Colors.blueAccent,
                    ),
                    Text(
                      "Open Everyday",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Colors.blueAccent,
                    ),
                    Text(
                      "08:00 - 16:00",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Icon(
                      Icons.attach_money,
                      color: Colors.blueAccent,
                    ),
                    Text(
                      "Rp 10.000,-",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.lightBlue),
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
                    child: Image.network(
                      'https://www.goodnewsfromindonesia.id/uploads/post/large-maxresdefault-1-ec487e5c0082320ad8fdde663d3f517d.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.network(
                      'https://asaljeplak.my.id/berita/storage/sites/2/2021/12/Monumen-Kapal-Selam-1024x576.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.network(
                      'https://museumnusantara.com/wp-content/uploads/2020/05/bagian-dalam-monumen-kapal-selam-oleh-museum-nusantara.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.network(
                      'https://obs.line-scdn.net/0h_M8NPEKuAGIFNxe9SUB_NT1hDBM2URprJ1FHDXViV1cgGxI9bQFTAXI1Ck4hBxc3JVZNUSAxDVQgAUExPA/w644',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.all(4),
                  //   child: Image.network(
                  //       "https://www.goodnewsfromindonesia.id/uploads/post/large-maxresdefault-1-ec487e5c0082320ad8fdde663d3f517d.jpg"),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(4),
                  //   child: Image.network(
                  //       "https://asaljeplak.my.id/berita/storage/sites/2/2021/12/Monumen-Kapal-Selam-1024x576.jpg"),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(4),
                  //   child: Image.network(
                  //       "https://museumnusantara.com/wp-content/uploads/2020/05/bagian-dalam-monumen-kapal-selam-oleh-museum-nusantara.jpg"),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(4),
                  //   child: Image.network(
                  //       "https://obs.line-scdn.net/0h_M8NPEKuAGIFNxe9SUB_NT1hDBM2URprJ1FHDXViV1cgGxI9bQFTAXI1Ck4hBxc3JVZNUSAxDVQgAUExPA/w644"),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
