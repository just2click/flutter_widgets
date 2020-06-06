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

List<String> getListElements () {

  var items = List<String>.generate(1000, (index) => 'Item $index');
  return items;

}

Widget getListView() {

  var items = getListElements();

  var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(items[index]),
          onTap: () {
            debugPrint('${items[index]} was tapped');
          },
        );
      });

  return listView;
}