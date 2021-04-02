import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'package:e_patas/ui/utils/utils.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Patas',
      theme: appTheme(Platform.isAndroid),
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('Welcome to E-Patas'),
          ),
        ),
      ),
    );
  }
}
