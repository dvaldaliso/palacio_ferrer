import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localización'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(22.145805, -80.454120),
          zoom: 18.0,
        ),
        layers: [
          TileLayerOptions(
            //urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            urlTemplate:
                "https://api.mapbox.com/styles/v1/dvaldaliso/ckypl1r93382j15pqivm6oyn4/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZHZhbGRhbGlzbyIsImEiOiJja3lwa2JiZXowYXp0MzF0ODI3YThsOXp0In0._TMCRsGBEHMLcafErDpkmQ",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiZHZhbGRhbGlzbyIsImEiOiJja3lwa2JiZXowYXp0MzF0ODI3YThsOXp0In0._TMCRsGBEHMLcafErDpkmQ',
              'id': 'mapbox.mapbox-streets-v8'
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(22.145805, -80.454120),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
