import 'package:get/get.dart';

class Calculatorcontroller extends GetxController {
  var a = 0.obs;
  var b = 0.obs;
  var c = 0.obs;
  var name = "".obs;
  compute(sname, x, y) {
    a.value = x;
    b.value = y;
    name.value = sname;
    c.value = a.value + b.value;
  }
}
