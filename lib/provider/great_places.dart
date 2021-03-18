import 'package:flutter/Material.dart';
import 'package:my_camping_zone/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
