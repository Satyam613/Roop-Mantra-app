import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:meraapp/widgets/car_widget.dart';
import 'package:meraapp/widgets/flight_widget.dart';
import 'package:meraapp/widgets/hotel_widget.dart';

// ignore: camel_case_types
class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

// ignore: camel_case_types
class _bookingState extends State<booking> {
  static int _currentIndex = 0;
  final tab = [const Car(), const Flight(), const Hotel()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Booking APP'),
        ),
        body: tab[_currentIndex],
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.shopping_cart, title: "Basket")
          ],
          onTabChangedListener: (position) {
            setState(() {
              _currentIndex = position;
            });
          },
        ));
  }
}
