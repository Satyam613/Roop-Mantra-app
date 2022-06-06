import 'package:get/get.dart';
import 'package:meraapp/model/product1_modelmaa.dart';

class CardController extends GetxController {
  var _products = {}.obs;
  void addProduct(MaaModel m1) {
    if (_products.containsKey(m1)) {
      _products[m1] += 1;
    } else {
      _products[m1] = 1;
    }
    Get.snackbar("Product Added",
        "Dear User your product ${m1.name} is added in shopping card",
        snackPosition: SnackPosition.TOP, duration: Duration(seconds: 2));
  }

  void remveProduct(MaaModel m1) {
    if (_products.containsKey(m1)) {
      _products[m1] -= 1;
    } else {
      _products[m1] = 1;
    }
  }
}
