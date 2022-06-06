import 'package:flutter/material.dart';

class CardControl extends StatelessWidget {
  final Color bgcolor;
  final Widget cardchild;
  final VoidCallback onpress;
  const CardControl(
      {Key? key,
      required this.bgcolor,
      required this.cardchild,
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: bgcolor),
      ),
    );
  }
}
