import 'package:flutter/material.dart';

import 'package:helloproject/model/apiWisata.dart';

class ListItem extends StatelessWidget {
  final Wisata place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    Key? key,
    required this.place,
    required this.isDone,
    required this.onCheckboxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      color: Colors.blue[400],
      shadowColor: Colors.grey,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.network(place.imageasset),
            title: Text(
              place.name!,
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
          Checkbox(value: isDone, onChanged: onCheckboxClick)
        ],
      ),
    );
  }
}
