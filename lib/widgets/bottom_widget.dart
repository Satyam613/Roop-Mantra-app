import 'package:flutter/material.dart';
import 'package:meraapp/utils/constraints.dart';

class Bottom extends StatelessWidget {
  final String buttontext;
  final VoidCallback ontap;
  const Bottom({Key? key, required this.buttontext, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            buttontext,
            style: klabelLargeStyle,
          ),
        ),
        color: kbottomContainercolor,
        height: kbottomContainerheight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
      ),
      onTap: ontap,
    );
  }
}
