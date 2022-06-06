import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.purple,
          child: const Center(
            child: Text(
              "car booking",
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
