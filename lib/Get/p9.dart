import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:meraapp/Get/c1.dart';
import 'package:meraapp/Get/c2.dart';
import 'package:meraapp/Get/c4.dart';
import 'package:meraapp/Get/c5.dart';
import 'package:meraapp/Get/c6.dart';
import 'package:meraapp/Get/c7.dart';
import 'package:meraapp/Get/c9.dart';
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
import 'package:meraapp/controller/mc1.dart';
import 'package:meraapp/controller/mc2.dart';
import 'package:meraapp/controller/mc4.dart';
import 'package:meraapp/controller/mu1.dart';
import 'package:meraapp/controller/mu2.dart';
import 'package:meraapp/controller/mu4.dart';
import 'package:meraapp/controller/shop2.dart';

class PC9 extends StatelessWidget {
  final sg9 = Get.put(SM4());
  final gc9 = Get.put(MC4());
  PC9({Key? key}) : super(key: key);
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
                  badgeContent: GetX<MC4>(
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
                Get.to(US9());
              },
            )
          ],
        ),
        body: GetX<SM4>(
          builder: ((controller) {
            return ListView.builder(
                itemCount: controller.pw.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(controller.pw[index].imageUrl),
                    title: Text(controller.pw[index].productName,
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text(controller.pw[index].price.toString()),
                    trailing: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        gc9.addProductToCart(controller.pw[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
