import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/g2.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/gs2.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SG2 extends GetxController {
  List<g2> pw = <g2>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(GS2().gs2().toList());
  }
}
