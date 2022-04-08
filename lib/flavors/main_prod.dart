import 'package:persuit/flavor_config.dart';
import 'package:persuit/main_common.dart';

void main() {
  final devConfig = FlavorConfig()
    ..appTitle = 'Persuit'
    ..imageLocation = 'assets/';

  mainCommon(devConfig);
}