import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  final List<String> _course = ['Hi shubham', 'hi Mohan', 'Hi renu'];
  List2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview seperator'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Card(
              elevation: 10.0,
              child: ListTile(
                title: Text(_course[index]),
                trailing: const Icon(Icons.forward),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                thickness: 5.0,
              ),
          itemCount: _course.length),
    );
  }
}
