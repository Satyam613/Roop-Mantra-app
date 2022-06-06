import 'package:flutter/material.dart';
import 'package:meraapp/model/product.dart';
import 'package:meraapp/screens/singleproduct.dart';

class Singlecosmo2 extends StatelessWidget {
  final List<Productmodel> products;
  const Singlecosmo2({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: SingleCosmo(product: products[index]),
            );
          }),
    );
  }
}
