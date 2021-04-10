import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'package:e_patas/ui/utils/utils.dart';

import 'package:e_patas/ui/screens/login.dart';
import 'package:e_patas/ui/screens/splash.dart';
import 'package:e_patas/ui/screens/welcome.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Patas',
        theme: appTheme(Platform.isAndroid),
        home: Login());
  }
}
