import 'package:flutter/material.dart';
import 'package:my_camping_zone/provider/great_places.dart';
import 'package:my_camping_zone/screens/add_place_screen.dart';
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
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.cyan,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
