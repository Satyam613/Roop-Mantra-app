import 'package:flutter/material.dart';
import 'package:meraapp/Get/p3.dart';
import 'package:meraapp/screens/view1.dart';
import 'package:meraapp/screens/view2.dart';

class D3 extends StatelessWidget {
  const D3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Girls Cosmetics"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: 1000,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 300,
                width: 200,
                child: Text(
                    '''Cosmetic products must not only promote healthy skin but also provide a beautiful tapestry of colors for every complexion. The state of the art in classical cosmetics is the use of finely crushed minerals and botanicals of the best quality. To suit even the most sensitive skin, these ingredients should be 100% pure and completely natural. However, most color additives to mass-produced cosmetic products are synthetic: indeed, unless specifically approved (such as annatto seed), all natural color additives are banned in the United States by the Food and Drug Administration to avoid irritation and hypoallergenic reactions. Cosmetic-grade color additives, either inorganic (pigments) or organic (dyes and pigments), are safe for use on humans and do not contain heavy metals such as lead, cadmium, and hexavalent chromium. The inorganic pigments include ultramarines, iron oxide, manganese, chromium oxide, titanium dioxide, and ferric ferrocyanide. Both organic and inorganic cosmetic-grade pigments are insoluble in both water and oil; however, they can be microscopically dispersed in a liquid host and made to appear as though they are dissolved. Only a few soluble dyes are used in cosmetic products because of the health hazards they may pose, especially if used in too high a concentration. For example, lakes are pigments manufactured by precipitating a soluble dye with a metallic salt (calcium salt, barium salt, aluminum salt, and sodium salt) because the different salts provide different colors.  ''',
                    style: TextStyle(color: Colors.white))),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PC3()));
                    },
                    child: Icon(Icons.shopping_bag)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
