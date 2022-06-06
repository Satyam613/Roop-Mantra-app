import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview default  demo'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 20.0,
              child: ListTile(
                title: Text('hi shubham'),
                trailing: Icon(Icons.forward),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('hi shubham'),
                trailing: Icon(Icons.forward),
              ),
            ),
          ),
          ListTile(
            title: Text('hi shubham'),
          )
        ],
      ),
    );
  }
}
