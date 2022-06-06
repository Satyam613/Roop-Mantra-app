import 'package:flutter/material.dart';
import 'package:meraapp/screens/page2nav.dart';

class Pagenav1 extends StatelessWidget {
  const Pagenav1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 100.0,
              width: 200.0,
              child: const Text('welcome to page1'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Page2nav()));
        }),
        child: const Icon(Icons.forward),
      ),
    );
  }
}
