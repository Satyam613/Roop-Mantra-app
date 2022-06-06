// import 'package:flutter/material.dart';
// import 'package:meraapp/model/p1.dart';
// import 'package:meraapp/model/service/p2.dart';

// class GVDemo extends StatelessWidget {
//   const GVDemo({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final products = ProductService().getProducts();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Top Selling Products'),
//       ),
//       body: GridView.builder(
//         itemCount: products.length,
//         itemBuilder: (BuildContext context, int index) {
//           return createProductItem(products[index]);
//         },
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0),
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//       ),
//     );
//   }

//   Widget createProductItem(Product1 product) {
//     return SizedBox(
//       height: 50,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Card(
//           elevation: 6.0,
//           child: Container(
//             height: 5,
//             width: 10,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.lightBlue,
//                   Colors.lightBlueAccent,
//                 ],
//               ),
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   product.productName,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Image(
//                   image: NetworkImage(product.imageUrl),
//                   width: 100,
//                   height: 100,
//                 ),
//                 Text('Rs. ${product.price}'),
//                 ElevatedButton(onPressed: () {}, child: Icon(Icons.add_circle)),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
