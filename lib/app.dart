import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:e_patas/ui/utils/routes.dart';
import 'package:e_patas/ui/utils/utils.dart';

import 'package:e_patas/ui/screens/screens.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Patas',
      theme: appTheme(Platform.isAndroid),
      onGenerateRoute: routeFactory(),
      home: Matches(),
    );
  }
}
