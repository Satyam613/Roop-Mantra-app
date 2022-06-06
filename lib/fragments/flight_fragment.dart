import 'package:flutter/material.dart';
import 'package:meraapp/Drawer/create_drawer.dart';
import 'package:meraapp/widgets/car_widget.dart';
import 'package:meraapp/widgets/flight_widget.dart';

class FlightFragment extends StatelessWidget {
  static const String routeName = '/flight';
  const FlightFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking app'),
      ),
      body: const Flight(),
      drawer: const createDrawer(),
    );
  }
}
