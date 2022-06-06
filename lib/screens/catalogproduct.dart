import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meraapp/controller/card_controller.dart';
import 'package:meraapp/model/product1_modelmaa.dart';
import 'package:meraapp/screens/cardproduct.dart';

class CatalogProduct extends StatefulWidget {
  const CatalogProduct({Key? key}) : super(key: key);

  @override
  State<CatalogProduct> createState() => _CatalogProductState();
}

class _CatalogProductState extends State<CatalogProduct> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CardProductCard(index: index);
      },
      itemCount: MaaModel.p1.length,
    ));
  }
}

class CardProductCard extends StatefulWidget {
  final int index;
  CardProductCard({Key? key, required this.index}) : super(key: key);

  @override
  State<CardProductCard> createState() => _CardProductCardState();
}

class _CardProductCardState extends State<CardProductCard> {
  final cardcontrol = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(MaaModel.p1[widget.index].imageurl),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(child: Text(MaaModel.p1[widget.index].name)),
        Expanded(child: Text('${MaaModel.p1[widget.index].initialprice}')),
        Expanded(
            child: IconButton(
                onPressed: () {
                  cardcontrol.addProduct(MaaModel.p1[widget.index]);
                },
                icon: Icon(Icons.add_circle))),
      ]),
    );
  }
}
