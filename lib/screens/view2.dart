import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:meraapp/controller/card2.dart';
import 'package:meraapp/controller/shop2.dart';

import 'view1.dart';

class ProductsCatalog extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController1());
  final userCartController = Get.put(CartController1());
  ProductsCatalog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Products Catalog'),
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 6.0),
                child: Badge(
                  toAnimate: false,
                  child: const Icon(Icons.shopping_cart),
                  badgeContent: GetX<CartController1>(
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
                Get.to(UserCartScreen());
              },
            )
          ],
        ),
        body: GetX<ShoppingController1>(
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
                        userCartController
                            .addProductToCart(controller.pw[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
