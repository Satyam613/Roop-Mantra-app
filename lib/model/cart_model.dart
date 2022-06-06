import 'package:equatable/equatable.dart';
import 'package:meraapp/model/product.dart';

class CartModel extends Equatable {
  final List<Productmodel> pm;

  const CartModel({this.pm = const <Productmodel>[]});
  double get subtotal =>
      pm.fold(0, (total, current) => total + current.finalprice);

  double deliveryFees(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryfee) {
    return subtotal + deliveryFees(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return "You have got free delivery";
    } else {
      double missing = 30.0 - subtotal;
      return 'Add \$ ${missing.toStringAsFixed(2)} for free delivery';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFees(subtotal).toStringAsFixed(2);
  String get freedeliveryString => freeDelivery(subtotal);

  String get totalString => total(subtotal, deliveryFees).toString();

  @override
  // TODO: implement props
  List<Object?> get props => [pm];
}
