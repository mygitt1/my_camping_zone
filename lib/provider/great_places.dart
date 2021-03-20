import 'dart:io';

import 'package:flutter/Material.dart';
import 'package:my_camping_zone/helper/db_helper.dart';
import 'package:my_camping_zone/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
      String pickedTitle, String pickedDescription, File pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toIso8601String(),
      description: pickedDescription,
      title: pickedTitle,
      image: pickedImage,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
    DbHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
      'description': newPlace.description,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DbHelper.getData('user_places');
    _items = dataList
        .map(
          (item) => Place(
              id: item['id'],
              title: item['title'],
              description: item['description'],
              image: File(item['image']),
              location: null),
        )
        .toList();
    notifyListeners();
  }
}
