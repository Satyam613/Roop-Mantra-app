import 'package:flutter/material.dart';
import 'package:meraapp/utils/constraints.dart';

class RoundedIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onpress;

  const RoundedIcon({Key? key, required this.iconData, required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: const CircleBorder(),
      fillColor: kRoundedIconButtonColor,
      child: Icon(iconData),
    );
  }
}
