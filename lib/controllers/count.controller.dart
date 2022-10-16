import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }
}
