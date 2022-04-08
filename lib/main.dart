import 'package:flutter/material.dart';
import 'package:persuit/core/theme/theme.dart';
import 'package:persuit/presentation/screens/auth/login/view.dart';
import 'package:persuit/presentation/screens/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persuit',
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.getAppThemeData(),
      home: const LoginScreen(),
    );
  }
}