import 'package:persuit/main_common.dart';

import '../flavor_config.dart';

void main() {
  final devConfig = FlavorConfig()
      ..appTitle = 'Persuit Dev'
      ..imageLocation = 'assets/';
  
  mainCommon(devConfig);
}