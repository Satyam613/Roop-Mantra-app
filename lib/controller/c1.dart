import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/sunday.dart';

class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;
  void addProductToCart(Product product) {
    selectedProducts.add(product);
    update();
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
    update();
  }

  void increaseQuantityofProduct(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  void decreaseeQuantityProduct(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].quantityPrice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.quantityPrice);
}
