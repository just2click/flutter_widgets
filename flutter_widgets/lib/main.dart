import 'package:flutter/material.dart';

import './app_screens/home.dart';

void main () {
  runApp(MaterialApp(
    title: 'Exploring UI Widgets',
    home: Scaffold(
      appBar: AppBar(title: Text('Basic ListView'),),
      body: getListView()
    ),
  ));
}

Widget getListView() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful view'),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint('Landscape tapped');
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_mac),
        title: Text('MacBook'),
      ),
      ListTile(
        leading: Icon(Icons.phone_iphone),
        title: Text('iPhone'),
      )
    ],
  );

  return listView;
}