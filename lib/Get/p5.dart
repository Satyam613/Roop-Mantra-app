import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:meraapp/Get/c1.dart';
import 'package:meraapp/Get/c2.dart';
import 'package:meraapp/Get/c4.dart';
import 'package:meraapp/Get/c5.dart';
import 'package:meraapp/controller/card2.dart';
import 'package:meraapp/controller/gc1.dart';
import 'package:meraapp/controller/gc2.dart';
import 'package:meraapp/controller/gc3.dart';
import 'package:meraapp/controller/gc4.dart';
import 'package:meraapp/controller/gc5.dart';
import 'package:meraapp/controller/gu1.dart';
import 'package:meraapp/controller/gu2.dart';
import 'package:meraapp/controller/gu3.dart';
import 'package:meraapp/controller/gu4.dart';
import 'package:meraapp/controller/gu5.dart';
import 'package:meraapp/controller/shop2.dart';

class PC5 extends StatelessWidget {
  final sg5 = Get.put(SG5());
  final gc5 = Get.put(GC5());
  PC5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Products Catalog'),
          backgroundColor: Colors.black,
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 6.0),
                child: Badge(
                  toAnimate: false,
                  child: const Icon(Icons.shopping_cart),
                  badgeContent: GetX<GC5>(
                    builder: ((controller) {
                      return Text(
                        controller.selectedProducts.length.toString(),
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14.0),
                      );
                    }),
                  ),
                ),
              ),
              onTap: () {
                Get.to(US5());
              },
            )
          ],
        ),
        body: GetX<SG5>(
          builder: ((controller) {
            return ListView.builder(
                itemCount: controller.pw.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(controller.pw[index].imageUrl),
                    title: Text(controller.pw[index].productName),
                    subtitle: Text(controller.pw[index].price.toString()),
                    trailing: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        gc5.addProductToCart(controller.pw[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
