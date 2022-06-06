//import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meraapp/screens/SaraswatiMaa.dart';
//import 'package:meraapp/screens/demo1.dart';
import 'package:meraapp/screens/loginscreen.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000.0,
        width: 10000.0,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Roop\n'
                '     Mantra',
                style: GoogleFonts.dancingScript(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent)),
            Image.asset(
              'assets/images/pi9.gif',
              height: 300.0,
              width: 700.0,
            ),
            Text(
              'Healthy skin is a reflection of overall wellness.',
              style: GoogleFonts.dancingScript(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            (MaterialPageRoute(builder: (context) => const LoginScreen1())),
          );
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
