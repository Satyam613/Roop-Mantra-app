import 'package:meraapp/model/g1.dart';
import 'package:meraapp/model/p1.dart';

class GS1 {
  List<g1> gs1() {
    List<g1> pom1 = [
      g1(
        productId: 101,
        quantity: 1,
        quantityPrice: 200,
        productName: 'Amla Hair Oil',
        price: 200,
        imageUrl:
            'https://newassets.apollo247.com/pub/media/catalog/product/d/a/dab0031_3.jpg',
      ),
      g1(
          productId: 102,
          quantity: 1,
          quantityPrice: 299.99,
          productName: 'Parashoot Coconut Oil',
          price: 299.99,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk7nNJOG-legYTf9nVFB6QCu4yJM2B9H1zOw&usqp=CAU'),
      g1(
          productId: 101,
          quantity: 1,
          quantityPrice: 499.99,
          productName: 'Jasmine Vatika Oil',
          price: 499.99,
          imageUrl:
              'https://www.kindpng.com/picc/m/666-6665394_parachute-hair-oil-parachute-advansed-jasmine-hair-oil.png'),
    ];
    return pom1;
  }
}
