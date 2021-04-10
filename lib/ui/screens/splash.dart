import 'package:e_patas/ui/components/logo.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Logo(),
      ),
      color: Theme.of(context).primaryColor,
    ));
  }
}
