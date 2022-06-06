import 'package:flutter/material.dart';

class Demo2 extends StatelessWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Demo2 APP'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 80.0,
              width: 200.0,
              color: Colors.red,
              child: const Center(
                child: Text('Red'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 80.0,
              width: 80.0,
              color: Colors.green,
              child: const Center(
                child: Text('Green'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 80.0,
              width: 80.0,
              color: Colors.blue,
              child: const Center(
                child: Text('Blue'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 80.0,
              width: 80.0,
              color: Colors.grey,
              child: const Center(
                child: Text('Grey'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 80.0,
              width: 200.0,
              color: Colors.red,
              child: const Center(
                child: Text('Red'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 80.0,
              width: 200.0,
              color: Colors.red,
              child: const Center(
                child: Text('Red'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
