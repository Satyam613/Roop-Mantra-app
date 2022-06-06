// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:meraapp/screens/BMI_result_screen.dart';
// import 'package:meraapp/services/calculate_Bmi_services.dart';
// import 'package:meraapp/utils/constraints.dart';
// import 'package:meraapp/widgets/Rounded_icon_widget.dart';
// import 'package:meraapp/widgets/bottom_widget.dart';
// import 'package:meraapp/widgets/card_widget.dart';
// import 'package:meraapp/widgets/icon_widget.dart';

// enum GenderType { male, female }

// class BmiCal extends StatefulWidget {
//   const BmiCal({Key? key}) : super(key: key);

//   @override
//   State<BmiCal> createState() => _BmiCalState();
// }

// class _BmiCalState extends State<BmiCal> {
//   GenderType selectedGender = GenderType.male;
//   double height = 180;
//   int age = 20;
//   double weight = 60.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundcolor,
//       appBar: AppBar(
//         backgroundColor: kBackgroundcolor,
//         leading: const Icon(Icons.health_and_safety),
//         title: const Text(
//           'BMI CALCULATOR',
//           style: TextStyle(fontSize: 15.0, color: Colors.red),
//         ),
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: CardControl(
//                         bgcolor: selectedGender == GenderType.male
//                             ? kCardActiveColor
//                             : kcardinactiveColor,
//                         cardchild: const IconWidget(
//                             icondata: FontAwesomeIcons.person,
//                             icontext: 'MALE'),
//                         onpress: () {
//                           setState(() {
//                             selectedGender = GenderType.male;
//                           });
//                         }),
//                   ),
//                   Expanded(
//                     child: CardControl(
//                         bgcolor: selectedGender == GenderType.female
//                             ? kCardActiveColor
//                             : kcardinactiveColor,
//                         cardchild: const IconWidget(
//                             icondata: FontAwesomeIcons.person,
//                             icontext: 'FEMALE'),
//                         onpress: () {
//                           setState(() {
//                             selectedGender = GenderType.female;
//                           });
//                         }),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: CardControl(
//                   bgcolor: kcardinactiveColor,
//                   cardchild: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'HEIGHT',
//                         style: klabelSubheaderTextstyle,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.baseline,
//                         textBaseline: TextBaseline.alphabetic,
//                         children: [
//                           Text(
//                             height.toStringAsFixed(1),
//                             style: klabelNumberStyle,
//                           ),
//                           const Text(
//                             'CM',
//                             style: klabelTextStyle,
//                           ),
//                         ],
//                       ),
//                       SliderTheme(
//                         data: SliderTheme.of(context).copyWith(
//                           activeTrackColor: kcardSliderActivecolor,
//                           inactiveTrackColor: kcardSliderinactivecolor,
//                           trackHeight: 4.0,
//                           trackShape: const RectangularSliderTrackShape(),
//                           thumbColor: ksliderthumbcolor,
//                           thumbShape: const RoundSliderThumbShape(
//                             enabledThumbRadius: 20.0,
//                           ),
//                           overlayColor: ksliderthumbcolor.withAlpha(60),
//                           overlayShape: const RoundSliderOverlayShape(
//                               overlayRadius: 28.0),
//                         ),
//                         child: Slider(
//                             value: height,
//                             min: 100.0,
//                             max: 250.0,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 height = newValue;
//                               });
//                             }),
//                       ),
//                     ],
//                   ),
//                   onpress: () {}),
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: CardControl(
//                         bgcolor: kCardActiveColor,
//                         cardchild: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'WEIGHT',
//                               style: klabelSubheaderTextstyle,
//                             ),
//                             Text(
//                               '$weight',
//                               style: klabelNumberStyle,
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: RoundedIcon(
//                                       iconData: FontAwesomeIcons.minus,
//                                       onpress: () {
//                                         setState(() {
//                                           weight--;
//                                         });
//                                       }),
//                                 ),
//                                 Expanded(
//                                   child: RoundedIcon(
//                                       iconData: FontAwesomeIcons.plus,
//                                       onpress: () {
//                                         setState(() {
//                                           weight++;
//                                         });
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         onpress: () {}),
//                   ),
//                   Expanded(
//                     child: CardControl(
//                         bgcolor: kCardActiveColor,
//                         cardchild: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text(
//                               'AGE',
//                               style: klabelSubheaderTextstyle,
//                             ),
//                             Text(
//                               '$age',
//                               style: klabelNumberStyle,
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: RoundedIcon(
//                                       iconData: FontAwesomeIcons.minus,
//                                       onpress: () {
//                                         setState(() {
//                                           if (age > 0) age--;
//                                         });
//                                       }),
//                                 ),
//                                 Expanded(
//                                   child: RoundedIcon(
//                                       iconData: FontAwesomeIcons.plus,
//                                       onpress: () {
//                                         setState(() {
//                                           age++;
//                                         });
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         onpress: () {}),
//                   ),
//                 ],
//               ),
//             ),
//             Bottom(
//                 buttontext: 'Calculate BMI',
//                 ontap: () {
//                   var bmi = BmiCal1(height, weight);
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => BmiResult(
//                                 bmi: bmi.calculate(),
//                                 bmiResult: bmi.getResult(),
//                                 bmiNarration: bmi.getNarration(),
//                               )));
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }
