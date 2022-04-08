
import 'package:persuit/flavor_config.dart';
import 'package:persuit/main_common.dart';

void main() {
  final integrationConfig = FlavorConfig()
    ..appTitle = 'Persuit Integration'
    ..imageLocation = 'assets/';

  mainCommon(integrationConfig);
}