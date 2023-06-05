import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/map/location_service.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapController = MapController();

  @override
  void initState() {
    DeterminePoint().determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: Scaffold.of(context).openEndDrawer,
            icon: const Icon(
              Icons.reorder,
            ),
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          center: LatLng(55.7522200, 37.6155600),
          zoom: 10,
        ),
        nonRotatedChildren: [
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                final point = DeterminePoint();
                if (point.result == null) return;

                mapController.move(
                    LatLng(point.result!.latitude, point.result!.longitude),
                    10);
              },
              child: SvgPicture.asset(Assets.assets_FindLocation_svg),
            ),
          ),
        ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
        ],
      ),
    );
  }
}
