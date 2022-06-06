import 'package:flutter/material.dart';
import 'package:meraapp/widgets/bottom_widget.dart';
import 'package:meraapp/widgets/card_widget.dart';

import '../utils/constraints.dart';

class BmiResult extends StatelessWidget {
  final bmi;
  final bmiResult;
  final bmiNarration;
  const BmiResult(
      {Key? key,
      required this.bmi,
      required this.bmiResult,
      required this.bmiNarration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundcolor,
        leading: const Icon(Icons.health_and_safety),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 15.0, color: Colors.red),
        ),
      ),
      body: Container(
        color: kBackgroundcolor,
        child: Padding(
          padding: const EdgeInsets.only(left: 100.0, top: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Text(
                  'YOUR RESULGT',
                  style: klabelLargeStyle,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: CardControl(
                      bgcolor: kCardActiveColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$bmiResult',
                              style: klabelSubheaderTextstyle,
                              textAlign: TextAlign.center),
                          Text('$bmi',
                              style: klabelNumberStyle,
                              textAlign: TextAlign.center),
                          Text('$bmiNarration',
                              style: klabelTextStyle,
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onpress: () {})),
              Expanded(
                  child: Bottom(
                      buttontext: 'RE-CALCULATE Your BMI',
                      ontap: () {
                        Navigator.pop(context);
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
