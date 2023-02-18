import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  var isSelect1 = 0;

  void select(index) {
    isSelect1 = index;
    update();
  }

  var isCheck = false.obs;


  var isSelect2 = false.obs;
}
