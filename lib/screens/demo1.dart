import 'package:flutter/material.dart';

// ignore: camel_case_types
class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
      ),
      body: const Center(
        child: Center(
          child: Text("welcome "),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
