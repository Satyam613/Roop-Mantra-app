import 'package:flutter/material.dart';
import 'package:meraapp/Drawer/create_drawer.dart';
//import 'package:meraapp/widgets/car_widget.dart';
import 'package:meraapp/widgets/hotel_widget.dart';

class HotelFragment extends StatelessWidget {
  static const String routeName = '/hotel';
  const HotelFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking app'),
      ),
      body: const Hotel(),
      drawer: const createDrawer(),
    );
  }
}
