import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailpage1 extends StatelessWidget {
  const Detailpage1({Key? key}) : super(key: key);

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
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.black,
            child: Container(
              height: 700,
              width: 300,
              child: Text(
                '''Launched in 1952, Lakmé is the first home-grown successful cosmetics brand in India.
      
      The classic Indian woman is expressive, confident and redefines the definition and meaning of beauty. She not only inspires but also aspires to achieve the best.
      
      From being the contemporary Indian beauty expert to becoming the flag-bearer of the latest makeup trends and styles that hit the runway, Lakmé as a brand continues to be innovative with its approach towards the world of makeup and beauty.
      
      Whether it is products that are synthesized to meet every Indian womans requirements, or the world-class hair, beauty and skin care services offered at Lakmé Salons, we at Lakmé are proud to deliver only the finest!
      
      Key Facts
      Lakmé is the country's first cosmetic brand to introduce makeup to Indian women and takes pride in being the Indian beauty expert for over 65 years.
      It is a complete beauty brand spanning colour cosmetics & skin care and extends to beauty services through the network of Lakmé Salons.
      Its bond with beauty and fashion is manifested through the Lakmé Fashion Week, which is now the largest fashion event of its kind in the country.
      Contact us
      If you have any questions or comments about Lakme, please visit our contact page.
      
      More about Lakme
      www.lakmeindia.com
      
      lakmefashionweek.co.in
      
      Lakme on Social
      Lakme on TwitterLakme on InstagramLakme on Facebook
      Previous brand ''',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
