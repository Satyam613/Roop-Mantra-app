import 'package:flutter/material.dart';
import 'package:meraapp/Drawer/create_drawer.dart';

class DefaultFragment extends StatelessWidget {
  static const String routeName = '/home';
  const DefaultFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking app'),
      ),
      body: Container(
        height: 600,
        width: 1500,
        color: Colors.pink,
        child: const Text('booking is now easy'),
      ),
      drawer: const createDrawer(),
    );
  }
}
