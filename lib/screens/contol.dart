// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meraapp/getx_demos/controller/shop1.dart';
// import 'package:meraapp/model/product.dart';

// import '../services/product_service.dart';

// class getx extends StatelessWidget {
//   final pro = ProductService().getproduct();
//   final shopy = Get.put(Shop1());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 200,
//         width: double.infinity,
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return createProduct1(pro[index]);
//           },
//           itemCount: pro.length,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }

//   Widget createProduct1(Product pro) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           child: Row(
//             children: [
//               Image(
//                 image: NetworkImage(pro.url),
//                 filterQuality: FilterQuality.high,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
