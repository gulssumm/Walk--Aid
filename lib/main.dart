import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class _Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

double _originLatitude = 38.392300;
double _originLongitude = 27.047840;

class _MapsState extends State<_Maps> {
  late GoogleMapController _controller;
  static final CameraPosition _initalCameraPosition = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _initalCameraPosition,
        tiltGesturesEnabled: true,
        compassEnabled: true,
        scrollGesturesEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            _controller = controller;
          });
        },
      ),
    );
  }
}