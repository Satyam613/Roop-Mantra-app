import 'package:meraapp/model/g2.dart';
import 'package:meraapp/model/g3.dart';
import 'package:meraapp/model/g4.dart';
import 'package:meraapp/model/g5.dart';
import 'package:meraapp/model/m1.dart';
import 'package:meraapp/model/m2.dart';

class MS7 {
  List<m2> ms7() {
    List<m2> pom7 = [
      m2(
          productId: 101,
          quantity: 1,
          quantityPrice: 450.0,
          productName: 'Hair-Gel',
          price: 450,
          imageUrl:
              'https://media.gq.com/photos/60995407f0f080645f1a3059/master/w_2000,h_1333,c_limit/STMNT-hair-clay.jpg'),
      m2(
          productId: 102,
          quantity: 1,
          quantityPrice: 999.99,
          productName: 'Hair - Gel',
          price: 999.99,
          imageUrl:
              'https://www.mensjournal.com/wp-content/uploads/2022/01/SHAMPOO.jpg?quality=86&strip=all'),
      m2(
          productId: 103,
          quantity: 1,
          quantityPrice: 799.99,
          productName: 'Hair-Gel',
          price: 799.99,
          imageUrl:
              'https://m.media-amazon.com/images/I/61VSQdYLlYL._SL1440_.jpg'),
    ];
    return pom7;
  }
}
