import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:meraapp/model/m2.dart';
import 'package:meraapp/model/m4.dart';
import 'package:meraapp/model/p1.dart';
import 'package:meraapp/model/service/gs1.dart';
import 'package:meraapp/model/service/ms7.dart';
import 'package:meraapp/model/service/ms9.dart';
import 'package:meraapp/model/service/p2.dart';

import '../model/g1.dart';

class SM4 extends GetxController {
  List<m4> pw = <m4>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    pw.assignAll(MS9().ms9().toList());
  }
}
