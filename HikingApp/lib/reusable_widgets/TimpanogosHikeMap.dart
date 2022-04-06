import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class TimpanogosHikeMap extends StatefulWidget {
  const TimpanogosHikeMap({Key? key}) : super(key: key);

  @override
  _TimpanogosHikeMapState createState() => _TimpanogosHikeMapState();
}

class _TimpanogosHikeMapState extends State<TimpanogosHikeMap> {
  

  MapController mapController = MapController(
    initMapWithUserPosition: false,
    initPosition: GeoPoint(latitude: 40.431182, longitude: -111.639283),
    areaLimit: BoundingBox( east: -105.4922941, north: 43.8084648, south: 38.817995, west: -116.9559113,),
  );

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller:mapController,
      trackMyPosition: false,
      initZoom: 14,
      minZoomLevel: 8,
      maxZoomLevel: 14,
      stepZoom: 1.0,
      userLocationMarker: UserLocationMaker(
        personMarker: MarkerIcon(
          icon: Icon(
            Icons.location_history_rounded,
            color: Colors.red,
            size: 48,
          ),
        ),
        directionArrowMarker: MarkerIcon(
          icon: Icon(
            Icons.double_arrow,
            size: 48,
          ),
        ),
      ),
      roadConfiguration: RoadConfiguration(
        startIcon: MarkerIcon(
          icon: Icon(
            Icons.person,
            size: 64,
            color: Colors.brown,
          ),
        ),
        roadColor: Colors.yellowAccent,
      ),
      markerOption: MarkerOption(
          defaultMarker: MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 56,
            ),
          )
      ),
    );
  }
}
