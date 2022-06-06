import 'package:flutter/material.dart';

class Page2nav extends StatelessWidget {
  const Page2nav({Key? key}) : super(key: key);

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
              child: const Text('welcome to page2'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
    );
  }
}
