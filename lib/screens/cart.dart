// import 'package:flutter/material.dart';
// import 'package:meraapp/screens/checkout.dart';

// import 'finalHome.dart';

// class Cart1 extends StatefulWidget {
//   final double price;
//   final String name;
//   final String image;
//   Cart1({required this.price, required this.image, required this.name});

//   @override
//   State<Cart1> createState() => _Cart1State();
// }

// class _Cart1State extends State<Cart1> {
//   int count = 1;
//   Widget _BuildSingleCartProduct() {
//     return Expanded(
//       child: Container(
//         height: 140,
//         width: 350,
//         color: Colors.blue,
//         child: Card(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 300,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage('${widget.image}'))),
//                   ),
//                   Container(
//                     height: 100,
//                     width: 200,
//                     child: ListTile(
//                       title: Column(
//                         children: [
//                           Text("${widget.name}"),
//                           Text("${widget.price}"),
//                           Container(
//                             height: 30,
//                             width: 200,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Row(
//                               children: [
//                                 GestureDetector(
//                                   child: Icon(Icons.add),
//                                   onTap: () {
//                                     setState(() {
//                                       count++;
//                                     });
//                                   },
//                                 ),
//                                 SizedBox(width: 30),
//                                 Text('$count'),
//                                 SizedBox(width: 40),
//                                 GestureDetector(
//                                   child: Icon(Icons.remove),
//                                   onTap: () {
//                                     setState(() {
//                                       if (count > 1) {
//                                         count--;
//                                       }
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         title: Text("Card page"),
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
//         children: [],
//       ),
//       bottomNavigationBar: Container(
//         height: 45,
//         width: 100,
//         child: RaisedButton(
//           child: Text('Continue'),
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Checkout(
//                         price: widget.price,
//                         image: widget.image,
//                         name: widget.name)));
//           },
//           color: Colors.pink,
//         ),
//       ),
//     );
//   }
// }
