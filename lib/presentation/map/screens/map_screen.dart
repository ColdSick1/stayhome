import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
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
      body: FutureBuilder<Position?>(
        future: DeterminePoint().determinePosition(),
        builder: (context, snapshot) {
          List<Marker> marker = [
            Marker(
              point: LatLng(snapshot.data!.latitude, snapshot.data!.longitude),
              builder: (context) => SvgPicture.asset(
                Assets.assets_me_svg,
              ),
            ),
          ];
          if (snapshot.hasData) {
            return FlutterMap(
              mapController: mapController,
              options: MapOptions(
                center:
                    LatLng(snapshot.data!.latitude, snapshot.data!.longitude),
                zoom: 15,
              ),
              nonRotatedChildren: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      mapController.move(
                          LatLng(snapshot.data!.latitude,
                              snapshot.data!.longitude),
                          15);
                    },
                    child: SvgPicture.asset(Assets.assets_FindLocation_svg),
                  ),
                ),
              ],
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                    markers: marker,
                    anchor: AnchorPos.align(AnchorAlign.center),
                    builder: ((context, markers) {
                      return SvgPicture.asset(Assets.assets_me_svg);
                    }),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
