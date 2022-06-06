// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'package:meraapp/model/product.dart';
// import 'package:meraapp/services/product_service.dart';

// import '../services/product2_servce.dart';
// import '../services/product3_service.dart';
// import '../services/product4_service.dart';

// class Cosmo extends StatefulWidget {
//   Cosmo({Key? key}) : super(key: key);

//   @override
//   State<Cosmo> createState() => _CosmoState();
// }

// class _CosmoState extends State<Cosmo> {
//   final pro = ProductService().getproduct();
//   final pro2 = Product2Service().getproduct2();
//   final pro3 = Product3Service().getproduct3();
//   final pro4 = Product4Service().getproduct4();

//   final images = [
//     'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
//         'https://images.unsplash.com/photo-1571646034647-52e6ea84b28c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGlwc3RpY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJlYXV0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1577195594933-f844fa36c37c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGlwc3RpY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1501644898242-cfea317d7faf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1616738935736-c0b9211e1f18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHx3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Roop-Mantra'),
//         centerTitle: true,
//       ),
//       body: ListView(children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             CarouselSlider.builder(
//               itemCount: images.length,
//               itemBuilder: (context, index, realindex) {
//                 final url = images[index];
//                 return buildImage(url, index);
//               },
//               options: CarouselOptions(
//                   height: 300,
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   autoPlayAnimationDuration: Duration(seconds: 1)),
//             ),
//           ]),
//         ),
//         const SizedBox(
//           height: 20.0,
//         ),
//         Text(
//           'Nignt Cream',
//           textAlign: TextAlign.center,
//         ),
//         Container(
//           height: 200,
//           width: double.infinity,
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return createProduct(pro[index]);
//             },
//             shrinkWrap: true,
//             itemCount: pro.length,
//             physics: ClampingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//           ),
//         ),
//         const SizedBox(
//           height: 20.0,
//         ),
//         Text(
//           'Eye-Shadow',
//           textAlign: TextAlign.center,
//         ),
//         Container(
//           height: 200,
//           width: double.infinity,
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return createProduct2(pro2[index]);
//             },
//             shrinkWrap: true,
//             itemCount: pro.length,
//             physics: ClampingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//           ),
//         ),
//         const SizedBox(
//           height: 20.0,
//         ),
//         Text(
//           'Fash-wash',
//           textAlign: TextAlign.center,
//         ),
//         Container(
//           height: 200,
//           width: double.infinity,
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return createProduct3(pro3[index]);
//             },
//             shrinkWrap: true,
//             itemCount: pro.length,
//             physics: ClampingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//           ),
//         ),
//         const SizedBox(
//           height: 20.0,
//         ),
//         Text(
//           'Hair-Oil',
//           textAlign: TextAlign.center,
//         ),
//         Container(
//           height: 200,
//           width: double.infinity,
//           child: ListView.builder(
//             itemBuilder: (context, index) {
//               return createProduct4(pro4[index]);
//             },
//             shrinkWrap: true,
//             itemCount: pro.length,
//             physics: ClampingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//           ),
//         ),
//       ]),
//     );
//   }

//   Widget buildImage(String url, int index) => Container(
//         margin: EdgeInsets.symmetric(vertical: 20),
//         color: Colors.grey,
//         child: Image.network(
//           url,
//           fit: BoxFit.cover,
//         ),
//       );

//   Widget createProduct(Product pro) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Image(
//                 image: NetworkImage(pro.url),
//                 filterQuality: FilterQuality.high,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 20.0,
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget createProduct2(Product pro2) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           child: Row(
//             children: [
//               Image(
//                 image: NetworkImage(pro2.url),
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget createProduct3(Product pro3) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           child: Row(
//             children: [
//               Image(
//                 image: NetworkImage(pro3.url),
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget createProduct4(Product pro4) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           child: Row(
//             children: [
//               Image(
//                 image: NetworkImage(pro4.url),
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
