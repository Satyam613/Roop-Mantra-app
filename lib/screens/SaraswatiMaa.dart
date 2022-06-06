import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:meraapp/screens/catalogproduct.dart';
import 'package:meraapp/screens/demo1.dart';

class Maa extends StatefulWidget {
  const Maa({Key? key}) : super(key: key);

  @override
  State<Maa> createState() => _MaaState();
}

class _MaaState extends State<Maa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          CatalogProduct(),
          ElevatedButton(
              onPressed: () => Get.to(() => demo()), child: Text("Go to Card")),
        ],
      )),
    );
  }
}
