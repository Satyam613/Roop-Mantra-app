import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/ms6.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';
import '../model/m1.dart';

class SM1 extends GetxController {
  List<m1> pw = <m1>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(MS6().ms6().toList());
  }
}
