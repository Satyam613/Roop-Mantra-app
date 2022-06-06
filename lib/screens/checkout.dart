// import 'package:flutter/material.dart';
// import 'package:meraapp/screens/finalHome.dart';

// class Checkout extends StatefulWidget {
//   final double price;
//   final String name;
//   final String image;
//   Checkout({required this.price, required this.image, required this.name});

//   @override
//   State<Checkout> createState() => _CheckoutState();
// }

// class _CheckoutState extends State<Checkout> {
//   Widget _bottomDetail({required String startName, required String endName}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(startName),
//         Text(endName),
//       ],
//     );
//   }

//   Widget _BuildSingleCartProduct() {
//     return Container(
//       height: 140,
//       width: double.infinity,
//       color: Colors.blue,
//       child: Card(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: 100,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage('${widget.image}'))),
//                 ),
//                 Container(
//                   height: 100,
//                   width: 200,
//                   child: ListTile(
//                     title: Column(
//                       children: [
//                         Text("${widget.name}"),
//                         Text("${widget.price}"),
//                         Container(
//                             height: 30,
//                             width: 200,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Quantity"),
//                                 Text('1'),
//                               ],
//                             )),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         height: 45,
//         width: 100,
//         child: RaisedButton(
//           child: Text('Bye'),
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Fhome()));
//           },
//           color: Colors.pink,
//         ),
//       ),
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
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Container(
//                 height: 140,
//                 width: double.infinity,
//                 color: Colors.blue,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text('checkout'),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               _BuildSingleCartProduct(),
//               _BuildSingleCartProduct(),
//               Container(
//                 height: 300,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _bottomDetail(startName: "Your price", endName: "50 Rs"),
//                       _bottomDetail(startName: "Discount", endName: "3 %"),
//                       _bottomDetail(startName: "Shipping", endName: "20"),
//                       _bottomDetail(startName: "Total", endName: "70 Rs"),
//                     ]),
//               )
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
