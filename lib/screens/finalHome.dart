import 'package:animated_background/animated_background.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meraapp/Splashscreen/splash.dart';
import 'package:meraapp/detail/d1.dart';
import 'package:meraapp/detail/d10.dart';
import 'package:meraapp/detail/d2.dart';
import 'package:meraapp/detail/d3.dart';
import 'package:meraapp/detail/d4.dart';
import 'package:meraapp/detail/d5.dart';
import 'package:meraapp/detail/d6.dart';
import 'package:meraapp/detail/d7.dart';
import 'package:meraapp/detail/d8.dart';
import 'package:meraapp/detail/d9.dart';
import 'package:meraapp/detail/detail.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/product.dart';
import 'package:meraapp/model/service/p2.dart';
import 'package:meraapp/screens/Listproduct.dart';
import 'package:meraapp/screens/cosmo2.dart';
import 'package:meraapp/screens/detailpage.dart';
import 'package:meraapp/screens/product_card2.dart';
import 'package:meraapp/screens/productcard.dart';
import 'package:meraapp/screens/singleproduct.dart';
import 'package:meraapp/screens/view1.dart';
import 'package:provider/provider.dart';

class Fhome extends StatefulWidget {
  @override
  State<Fhome> createState() => _FhomeState();
}

class _FhomeState extends State<Fhome> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final images = [
    'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/skin-care-video-ad-design-template-007b354027a4c46e6eaad56f87805e90_screen.jpg?ts=1567084534',
    'https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJlYXV0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1577195594933-f844fa36c37c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGlwc3RpY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1501644898242-cfea317d7faf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1616738935736-c0b9211e1f18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHx3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];
  final products = ProductService1().getProducts1();

  Widget _buildFeatureProduct(
      {required String name, required double price, required String image}) {
    return Card(
      child: Container(
        height: 250,
        width: 180,
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(image: AssetImage('$image')),
              ),
            ),
            Text('$price'),
            Text('$name'),
          ],
        ),
      ),
    );
  }

  List<String> name = ['Hair Shampoo', 'Lipstick', 'Shampoo'];
  List<int> price = [100, 300, 500];
  List<String> image = [
    'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Roop  Mantra',
            style: GoogleFonts.dancingScript(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        elevation: 0.0,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: 1000,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realindex) {
                  final url = images[index];
                  return buildImage(url, index);
                },
                options: CarouselOptions(
                    height: 300,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1)),
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Girls Cosmetics',
                      style: GoogleFonts.dancingScript(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/g2.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D1()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/s1.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D2()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/g3.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D3()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/g4.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D4()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/g5.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D5()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Boys Cosmetics',
                      style: GoogleFonts.dancingScript(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/m1.png',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D6()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/m2.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D7()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/m3.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D8()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/m4.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D9()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage(
                            'assets/images/m5.jpg',
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const D10()));
                              },
                              child: Icon(Icons.book))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String url, int index) => Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey,
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      );

  Widget createProductItem(Product1 product) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 6.0,
          child: Container(
            height: 5,
            width: 10,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.lightBlueAccent,
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  product.productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: NetworkImage(product.imageUrl),
                  width: 100,
                  height: 100,
                ),
                Text('Rs. ${product.price}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
