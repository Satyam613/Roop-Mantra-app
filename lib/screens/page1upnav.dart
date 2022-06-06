import 'package:flutter/material.dart';
import 'package:meraapp/screens/page2nav.dart';
import 'package:meraapp/screens/page2upnav.dart';

class Pagenav1up extends StatelessWidget {
  const Pagenav1up({Key? key}) : super(key: key);

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
        onPressed: (() async {
          var navres = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Page2navup()),
          );
          if (navres != null) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Result'),
                content: Text('data received $navres'),
              ),
            );
          } else {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Nav done using back button'),
                    ));
          }
        }),
        child: const Icon(Icons.forward),
      ),
    );
  }
}
