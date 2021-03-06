import 'dart:async';

import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/welcome'),
    );

    return Scaffold(
      body: Container(
        child: Center(
          child: Logo(),
        ),
        decoration: BoxDecoration(gradient: primaryColorGradient),
      ),
    );
  }
}
