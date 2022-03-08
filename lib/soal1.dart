import 'dart:developer';

import 'package:flutter/material.dart';

class Soal1 extends StatelessWidget {
  const Soal1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _primeorno = 0;
  int _cek = 0;
  String _text = "";
  String _text2 = "";
  String _text3 = "";
  String _text4 = "";

  void _incrementCounter() {
    setState(() {
      _counter++;

      //percobaan1
      if (_counter > 70) {
        _counter = 1;
      }

      //perocbaan2
      if (_counter % 2 == 0) {
        _text4 = "Bilangan Genap";
      } else if (_counter == 69) {
        _text4 = "Nice";
      } else {
        _text4 = "Bilangan ganjil";
      }

      // percobaan3
      _text3 = "Genap : ";
      for (int i = 1; i <= _counter; i++) {
        if (i % 2 == 0) {
          _text3 += "${i}, ";
        }
      }

      //latihan
      _text2 = "genap kelipatan 3 = ";
      for (int i = 1; i <= _counter; i++) {
        if (i % 2 == 0 && i % 3 == 0) {
          _text2 += "${i}, ";
        }
      }

      //Tugas
      _text = "Bilangan Prima : ";

      void primeornoooo(int num) {
        int i, m = 0, cek = 0;
        m = num ~/ 2;
        for (i = 2; i <= m; i++) {
          if (num % i == 0) {
            cek = 1;
            break;
          }
        }
        if (cek == 0) {
          _text += "${num}, ";
        }
      }

      for (int i = 2; i <= _counter; i++) {
        primeornoooo(i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text(
                "Counter :",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[300],
                ),
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                color: Colors.blue[300],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text(
                _text4,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[300],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text(
                _text3,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[300],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text(
                _text2,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[300],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text(
                _text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[300],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.home),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
