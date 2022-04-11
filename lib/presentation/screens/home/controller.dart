import 'package:get/get.dart';

class HomeController extends GetxController {
  final showIndices = false.obs;

  void setShowIndices(bool value) {
    showIndices.value = value;
  }
}
