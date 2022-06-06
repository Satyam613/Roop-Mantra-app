import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/p2.dart';

class ShoppingController1 extends GetxController {
  List<Product1> pw = <Product1>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(ProductService1().getProducts1().toList());
  }
}
