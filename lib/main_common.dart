import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:persuit/core/theme/theme.dart';
import 'package:persuit/flavor_config.dart';
import 'package:persuit/presentation/screens/auth/login/view.dart';

void mainCommon(FlavorConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(config: config));
}

class MyApp extends StatelessWidget {
  final FlavorConfig config;

  const MyApp({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    
    return GetMaterialApp(
      title: config.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.getAppThemeData(),
      home: const LoginScreen(),
    );
  }
}
