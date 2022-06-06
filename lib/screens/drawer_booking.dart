import 'package:flutter/material.dart';
import 'package:meraapp/fragments/cab_fragment.dart';
import 'package:meraapp/fragments/default_fragment.dart';
import 'package:meraapp/fragments/flight_fragment.dart';
import 'package:meraapp/fragments/hotel_fragment.dart';
import 'package:meraapp/routes/page_route.dart';

class DrawerBook extends StatelessWidget {
  const DrawerBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Pageroute.home,
      routes: {
        Pageroute.home: (context) => const DefaultFragment(),

        Pageroute.car: (context) => const CabFragment(),

        // ignore: equal_keys_in_map
        Pageroute.flight: (context) => const FlightFragment(),

        // ignore: equal_keys_in_map
        Pageroute.hotel: (context) => const HotelFragment(),
      },
    );
  }
}
