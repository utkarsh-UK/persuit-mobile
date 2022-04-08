import 'package:persuit/flavor_config.dart';
import 'package:persuit/main_common.dart';

void main() {
  final devConfig = FlavorConfig()
    ..appTitle = 'Pesruit PreProd'
    ..imageLocation = 'assets/';

  mainCommon(devConfig);
}