import 'package:flutter/material.dart';
import 'package:meraapp/state_management_demos/emphiral_demos/widget3.dart';

import 'couter.dart';

class Widget2 extends StatelessWidget {
  final MyCounter myCounter;

  const Widget2({Key? key, required this.myCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Widget 2',
          style: TextStyle(fontSize: 24.0),
        ),
        Widget3(myCounter: myCounter),
      ],
    );
  }
}
