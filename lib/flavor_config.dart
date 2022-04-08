import 'package:flutter/material.dart';

class FlavorConfig {
  String appTitle;
  Map<String, String> apiEndpoints;
  String imageLocation;
  ThemeData? themeData;

  FlavorConfig({
    this.appTitle = 'Persuit',
    this.imageLocation='assets/',
    this.apiEndpoints = const {},
}){
    themeData = ThemeData.light();
  }
}