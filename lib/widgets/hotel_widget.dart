import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.green,
          child: const Center(
            child: Text(
              "Hotel booking",
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
