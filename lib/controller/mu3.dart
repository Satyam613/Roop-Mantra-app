import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/m2.dart';
import 'package:meraapp/model/m3.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/ms7.dart';
import 'package:meraapp/model/service/ms8.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SM3 extends GetxController {
  List<m3> pw = <m3>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(MS8().ms8().toList());
  }
}
