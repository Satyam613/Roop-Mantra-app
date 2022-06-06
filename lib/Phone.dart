import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Phone1 extends StatelessWidget {
  const Phone1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HelpLines',
            style: GoogleFonts.dancingScript(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.purple,
        actions: [],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 600,
                width: 800,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Name=> Shubham Kumar Gupta",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mobile_friendly,
                          color: Colors.white,
                        ),
                        Text(
                          "Phone=> 9691776519",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        Text(
                          "Mail-id=> sg4030383@gmail.com",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Name=> Nitish",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mobile_friendly,
                          color: Colors.white,
                        ),
                        Text(
                          "Phone=> 96914763469",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        Text(
                          "Mail-id=> nitish4083@gmail.com",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Name=> Satyam",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mobile_friendly,
                          color: Colors.white,
                        ),
                        Text(
                          "Phone=> 969147488769",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        Text(
                          "Mail-id=> Satayam4083@gmail.com",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
