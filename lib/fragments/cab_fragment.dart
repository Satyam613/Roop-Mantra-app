import 'package:flutter/material.dart';
import 'package:meraapp/Drawer/create_drawer.dart';
import 'package:meraapp/widgets/car_widget.dart';

class CabFragment extends StatelessWidget {
  static const String routeName = '/car';
  const CabFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking app'),
      ),
      body: const Car(),
      drawer: const createDrawer(),
    );
  }
}
