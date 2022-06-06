// import 'package:flutter/material.dart';
// import 'package:meraapp/model/product.dart';

// class ProductCard extends StatelessWidget {
//   final Productmodel p1;
//   const ProductCard({
//     Key? key,
//     required this.p1,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width / 2.5,
//           height: 150,
//           child: Image.network(
//             p1.imageurl,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           top: 60,
//           child: Container(
//             width: MediaQuery.of(context).size.width / 2.5,
//             height: 80,
//             decoration: BoxDecoration(
//               color: Colors.black.withAlpha(50),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(p1.name),
//                     ],
//                   ),
//                   Text('${p1.finalprice}'),
//                 ],
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
