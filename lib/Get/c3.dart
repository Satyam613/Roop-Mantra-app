import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meraapp/controller/gc3.dart';

import '../controller/card2.dart';

class US3 extends StatelessWidget {
  const US3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('User Cart'),
          backgroundColor: Colors.purple,
        ),
        body: GetBuilder<GC3>(
          builder: ((controller) {
            return Column(children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: controller.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          leading: Image.network(
                              controller.selectedProducts[index].imageUrl),
                          title: Text(
                            controller.selectedProducts[index].productName,
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(controller
                              .selectedProducts[index].price
                              .toString()),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            TextButton(
                              onPressed: () {
                                controller.increaseQuantityofProduct(index);
                              },
                              child: const Icon(Icons.add),
                            ),
                            Text(controller.selectedProducts[index].quantity
                                .toString()),
                            TextButton(
                              onPressed: () {
                                controller.decreaseeQuantityProduct(index);
                              },
                              child: const Icon(Icons.remove),
                            ),
                            TextButton(
                              onPressed: () {
                                controller.removeProductsFromCart(
                                    controller.selectedProducts[index]);
                              },
                              child: const Icon(Icons.delete),
                            ),
                          ]));
                    }),
              ),
              const SizedBox(height: 10),
              Text(
                'Total Price : Rs. ${controller.totalCost}',
                style: const TextStyle(fontSize: 30.0),
              )
            ]);
          }),
        ));
  }
}
