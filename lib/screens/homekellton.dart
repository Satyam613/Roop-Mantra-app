// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyHome extends StatefulWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   List<String> name = ['Hair Shampoo', 'Lipstick', 'Shampoo'];
//   List<int> price = [100, 300, 500];
//   List<String> image = [
//     'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
//     'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('Home page'),
//           elevation: 0.0,
//           backgroundColor: Colors.yellow,
//           actions: <Widget>[
//             Badge(
//                 badgeContent: Padding(
//                   padding: const EdgeInsets.only(right: 5, top: 1),
//                   child: Text('0'),
//                 ),
//                 animationDuration: Duration(milliseconds: 300),
//                 child: Icon(Icons.shopping_cart)),
//           ]),
//       body: ListView(
//         children: [
//           // Container(
//           //   margin: EdgeInsets.symmetric(horizontal: 10),
//           //   child: CarouselSlider.builder(
//           //     itemCount: images.length,
//           //     itemBuilder: (context, index, realindex) {
//           //       final url = images[index];
//           //       return buildImage(url, index);
//           //     },
//           //     options: CarouselOptions(
//           //         height: 300,
//           //         enlargeCenterPage: true,
//           //         autoPlay: true,
//           //         autoPlayAnimationDuration: Duration(seconds: 1)),
//           //   ),
//           // ),
//           Column(
//             children: [
//               Expanded(
//                   child: ListView.builder(
//                       itemCount: name.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           child: Column(children: [
//                             Row(
//                               children: [
//                                 Image(
//                                   height: 100,
//                                   width: 100,
//                                   image: NetworkImage(image[index].toString()),
//                                 ),
//                                 Text(index.toString())
//                               ],
//                             )
//                           ]),
//                         );
//                       })),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
