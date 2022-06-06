// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:meraapp/screens/cart.dart';
// import 'package:meraapp/screens/finalHome.dart';

// class Detail extends StatefulWidget {
//   final String image;
//   final String name;
//   final double price;

//   Detail({required this.image, required this.name, required this.price});

//   @override
//   State<Detail> createState() => _DetailState();
// }

// class _DetailState extends State<Detail> {
//   int count = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => Fhome()));
//             },
//             icon: Icon(Icons.arrow_back)),
//         actions: <Widget>[
//           IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             child: Column(
//               children: <Widget>[
//                 Center(
//                   child: Container(
//                     width: 500,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Card(
//                         child: Container(
//                           height: 220,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 fit: BoxFit.fill,
//                                 image: AssetImage(widget.image)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         height: 60,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Column(
//                               children: <Widget>[
//                                 Text(widget.name),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Text(widget.price.toString()),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 130,
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                           children: [
//                             GestureDetector(
//                               child: Icon(Icons.add),
//                               onTap: () {
//                                 setState(() {
//                                   count++;
//                                 });
//                               },
//                             ),
//                             SizedBox(width: 30),
//                             Text('$count'),
//                             SizedBox(width: 40),
//                             GestureDetector(
//                               child: Icon(Icons.remove),
//                               onTap: () {
//                                 setState(() {
//                                   if (count > 1) {
//                                     count--;
//                                   }
//                                 });
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.blue,
//                         ),
//                         child: GestureDetector(
//                           child: Center(child: Text('Check Out')),
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Cart1(
//                                         price: widget.price,
//                                         image: widget.image,
//                                         name: widget.name)));
//                           },
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
