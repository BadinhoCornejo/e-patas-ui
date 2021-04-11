import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'package:e_patas/ui/utils/utils.dart';

import 'package:e_patas/ui/screens/login.dart';
import 'package:e_patas/ui/screens/splash.dart';
import 'package:e_patas/ui/screens/welcome.dart';
import 'package:e_patas/ui/screens/email_register.dart';
import 'package:e_patas/ui/screens/password_register.dart';
import 'package:e_patas/ui/screens/user_register.dart';
import 'package:e_patas/ui/screens/pet_register.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Patas',
      theme: appTheme(Platform.isAndroid),
      home: Login(),
    );
  }
}
