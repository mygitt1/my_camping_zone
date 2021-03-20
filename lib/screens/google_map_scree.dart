import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:my_camping_zone/models/place.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;
  final bool isSelecting;

  MapScreen(
      {this.initialLocation = const PlaceLocation(
        latitude: 37.5485,
        longitude: -121.9886,
      ),
      this.isSelecting = false});
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(
        widget.initialLocation.latitude,
        widget.initialLocation.longitude,
      ))),
    );
  }
}
