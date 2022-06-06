import 'package:flutter/material.dart';
import 'package:meraapp/fragments/cab_fragment.dart';
import 'package:meraapp/fragments/flight_fragment.dart';
import 'package:meraapp/fragments/hotel_fragment.dart';

// ignore: camel_case_types
class createDrawer extends StatelessWidget {
  const createDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text("Welcome to booking app"),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.orange,
              Colors.pink,
              Colors.yellow,
            ])),
          ),
          ListTile(
            leading: const Icon(Icons.flight),
            title: const Text('flight booking'),
            onTap: () {
              Navigator.of(context).pushNamed(FlightFragment.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('car booking'),
            onTap: () {
              Navigator.of(context).pushNamed(CabFragment.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.hotel),
            title: const Text('Hotel booking'),
            onTap: () {
              Navigator.of(context).pushNamed(HotelFragment.routeName);
            },
          ),
        ],
      ),
    );
  }
}
