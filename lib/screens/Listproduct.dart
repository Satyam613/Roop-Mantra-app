// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:meraapp/screens/finalHome.dart';

// class ListPro extends StatelessWidget {
//   Widget _buildFeatureProduct(
//       {required String name, required double price, required String image}) {
//     return Card(
//       child: Container(
//         height: 250,
//         width: 300,
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: 190,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 image:
//                     DecorationImage(image: AssetImage('assets/images/$image')),
//               ),
//             ),
//             Text('$price'),
//             Text('$name'),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => Fhome()));
//             },
//             icon: Icon(Icons.arrow_back)),
//         actions: <Widget>[
//           IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.notifications_none,
//                 color: Colors.black,
//               )),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             height: 50,
//             color: Colors.blue,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Feature All"),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//               _buildFeatureProduct(
//                   name: 'Hair dry', price: 30.99, image: "img1.jpg"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
