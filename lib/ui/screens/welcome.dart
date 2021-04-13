import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Logo(),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 38),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MainButton(
                    isWhite: true,
                    text: "INICIAR SESIÓN",
                    onPressed: () {},
                  ),
                  SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '¿No tienes una cuenta? Regístrate',
                      style: iOSBody(backgroundColor),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        gradient: primaryColorGradient,
      ),
    ));
  }
}
