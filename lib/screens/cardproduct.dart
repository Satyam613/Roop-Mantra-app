import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meraapp/model/product.dart';

class CardProduct extends StatelessWidget {
  final Productmodel product;
  const CardProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            product.imageurl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
                Text('${product.finalprice}'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
              Text('1'),
              IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
            ],
          )
        ],
      ),
    );
  }
}
