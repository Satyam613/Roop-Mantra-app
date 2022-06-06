import 'package:flutter/material.dart';

class Productmodel {
  final String name;

  final String imageurl;

  final double finalprice;
  final bool HairShampo;
  final bool creams;

  final bool lipstick;

  final bool earing;

  final bool neckless;

  Productmodel(
      {required this.imageurl,
      required this.name,
      required this.finalprice,
      required this.HairShampo,
      required this.creams,
      required this.lipstick,
      required this.earing,
      required this.neckless});
}
