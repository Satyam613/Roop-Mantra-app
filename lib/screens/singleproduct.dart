import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meraapp/db/de_helper.dart';
import 'package:meraapp/model/cart2.dart';
import 'package:meraapp/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import '../model/product.dart';

class SingleCosmo extends StatefulWidget {
  final Productmodel product;
  const SingleCosmo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<SingleCosmo> createState() => _SingleCosmoState();
}

class _SingleCosmoState extends State<SingleCosmo> {
  DBhelper dbhelper = DBhelper();
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 170,
            child: Image.network(
              widget.product.imageurl,
              fit: BoxFit.cover,
            )),
        Positioned(
          top: 80,
          child: Container(
            width: MediaQuery.of(context).size.width / 4 - 10,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.product.name),
                        Text('${widget.product.finalprice}'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
