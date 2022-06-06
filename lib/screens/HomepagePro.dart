import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  Widget cosmo1() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.network(
                'https://image.shutterstock.com/image-photo/oil-hair-treatment-woman-260nw-580189900.jpg',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hair Oil'),
                    Text('50 Rs'),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text('1 piece'),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Text('1'),
                                Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ListTile1({required IconData icon1, required String title}) {
    return ListTile(
      leading: Icon(
        icon1,
        size: 32,
      ),
      title: Text(title),
    );
  }

  final images = [
    'https://images.unsplash.com/photo-1591130901921-3f0652bb3915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzMzIxNDkxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
        'https://images.unsplash.com/photo-1571646034647-52e6ea84b28c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGlwc3RpY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/skin-care-video-ad-design-template-007b354027a4c46e6eaad56f87805e90_screen.jpg?ts=1567084534',
    'https://images.unsplash.com/photo-1577195594933-f844fa36c37c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGlwc3RpY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1501644898242-cfea317d7faf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1616738935736-c0b9211e1f18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHx3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.yellow,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 43,
                      child: CircleAvatar(backgroundColor: Colors.red),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile1(icon1: Icons.home, title: "Home"),
              ListTile1(icon1: Icons.shopping_cart_rounded, title: "Shop Card"),
              ListTile1(icon1: Icons.person, title: "My profile"),
              ListTile1(icon1: Icons.notifications, title: "Notifications"),
              ListTile1(icon1: Icons.star, title: "Ratings"),
              ListTile1(icon1: Icons.favorite, title: "WishList"),
              ListTile1(icon1: Icons.copy, title: "Raise a complaint"),
              ListTile1(icon1: Icons.format_quote_sharp, title: "FAQ"),
              Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact Support'),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: [
                            Text('Call Us'),
                            Text('7880041963'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text('Mail Us'),
                          Text('shubham.gupta2@kelltontech.com'),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Roop Mantra'),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shop,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CarouselSlider.builder(
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
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Face -wash'),
              Text('view-all'),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              cosmo1(),
              SizedBox(
                width: 20,
              ),
              cosmo1(),
              SizedBox(
                width: 20,
              ),
              cosmo1(),
              SizedBox(
                width: 20,
              ),
              cosmo1(),
              SizedBox(
                width: 20,
              ),
              cosmo1(),
            ],
          ),
        )
      ]),
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
}
