import 'dart:io';

import 'package:flutter/Material.dart';
import 'package:my_camping_zone/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, String description, File image) {
    final newPlace = Place(
      id: DateTime.now().toIso8601String(),
      description: description,
      title: pickedTitle,
      image: image,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
