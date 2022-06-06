import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/g3.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/gs3.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SG3 extends GetxController {
  List<g3> pw = <g3>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(GS3().gs3().toList());
  }
}
