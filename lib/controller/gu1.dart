import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SG1 extends GetxController {
  List<g1> pw = <g1>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(GS1().gs1().toList());
  }
}
