import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meraapp/Phone.dart';
import 'package:meraapp/detail/detail.dart';
import 'package:meraapp/screens/finalHome.dart';

class Baar extends StatefulWidget {
  const Baar({Key? key}) : super(key: key);

  @override
  State<Baar> createState() => _BaarState();
}

class _BaarState extends State<Baar> {
  @override
  var pages = [
    Fhome(),
    Detailpage1(),
    Phone1(),
  ];
  var index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
        color: Colors.purple,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: (pages) {
          setState(() {
            index = pages;
          });
        },
      ),
      body: pages[index],
    );
  }
}
