import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/g5.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/gs5.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SG5 extends GetxController {
  List<g5> pw = <g5>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(GS5().gs5().toList());
  }
}
