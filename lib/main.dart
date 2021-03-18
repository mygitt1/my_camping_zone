import 'package:flutter/material.dart';
import 'package:my_camping_zone/provider/great_places.dart';
import 'package:provider/provider.dart';

import 'screens/places_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      
      child: MaterialApp(
        title: 'Camping Zone',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.blueGrey,
        ),
        home: PlacesListScreen(),
      ),
    );
  }
}
