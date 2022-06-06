import 'package:get/get_connect/http/src/utils/utils.dart';

class Cart {
  final String? name;

  final String? imageurl;

  final int? initialprice;
  final int? finalprice;

  Cart({
    required this.name,
    required this.imageurl,
    required this.initialprice,
    required this.finalprice,
  });

  Cart.formMap(Map<dynamic, dynamic> res)
      : name = res['name'],
        imageurl = res['imageurl'],
        initialprice = res['initialprice'],
        finalprice = res['finalprice'];

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'imageurl': imageurl,
      'initialprice': initialprice,
      'finalprice': finalprice,
    };
  }
}
