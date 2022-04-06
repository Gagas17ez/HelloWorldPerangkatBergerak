import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:helloproject/screentesting/menuwisataclone.dart';
import 'package:helloproject/screen/soal1.dart';
import 'package:helloproject/screen/detailWisata.dart';
import 'package:helloproject/screentesting/menuapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minggu 4',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color.fromARGB(255, 53, 53, 53),
      )),
      home: MenuWisataclone(),
    );
  }
}
