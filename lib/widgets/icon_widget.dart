import 'package:flutter/material.dart';
import 'package:meraapp/utils/constraints.dart';

class IconWidget extends StatelessWidget {
  final IconData icondata;
  final String icontext;
  const IconWidget({Key? key, required this.icondata, required this.icontext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icondata,
          color: kIconcolor,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          icontext,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
