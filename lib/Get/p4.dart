import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:meraapp/Get/c1.dart';
import 'package:meraapp/Get/c2.dart';
import 'package:meraapp/Get/c4.dart';
import 'package:meraapp/controller/card2.dart';
import 'package:meraapp/controller/gc1.dart';
import 'package:meraapp/controller/gc2.dart';
import 'package:meraapp/controller/gc3.dart';
import 'package:meraapp/controller/gc4.dart';
import 'package:meraapp/controller/gu1.dart';
import 'package:meraapp/controller/gu2.dart';
import 'package:meraapp/controller/gu3.dart';
import 'package:meraapp/controller/gu4.dart';
import 'package:meraapp/controller/shop2.dart';

class PC4 extends StatelessWidget {
  final sg4 = Get.put(SG4());
  final gc4 = Get.put(GC4());
  PC4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Products Catalog'),
          backgroundColor: Colors.purple,
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 6.0),
                child: Badge(
                  toAnimate: false,
                  child: const Icon(Icons.shopping_cart),
                  badgeContent: GetX<GC4>(
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
                Get.to(US4());
              },
            )
          ],
        ),
        body: GetX<SG4>(
          builder: ((controller) {
            return ListView.builder(
                itemCount: controller.pw.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(controller.pw[index].imageUrl),
                    title: Text(controller.pw[index].productName),
                    subtitle: Text(
                      controller.pw[index].price.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        gc4.addProductToCart(controller.pw[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
