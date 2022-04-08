import 'package:get/get.dart';

/// Returns height & width percentage based on [this] value.
extension PercentSized on num {
  double get hp => Get.height * (this / 100);

  double get wp => Get.width * (this / 100);
}

/// Returns responsive sp value for text sizes.
extension ResponsiveText on num {
  double get sp => Get.width / 100 * (this / 3);
}
