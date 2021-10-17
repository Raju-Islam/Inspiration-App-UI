import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspiration_app_ui/page/homePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    // statusBarColor: Colors.transparent,
    // systemNavigationBarColor: Colors.transparent


  ));
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
// SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
 // statusBarBrightness: Brightness.light,