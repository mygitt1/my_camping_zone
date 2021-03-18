import 'package:flutter/material.dart';

import 'screens/places_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camping Zone',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.blueGrey,
      ),
      home: PlacesListScreen(),
    );
  }
}
