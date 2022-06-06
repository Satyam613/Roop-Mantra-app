import 'package:flutter/material.dart';

class Flight extends StatelessWidget {
  const Flight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.red,
          child: const Center(
            child: Text(
              "flight booking",
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
