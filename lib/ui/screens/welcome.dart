import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Logo(), flex: 3),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MainButton(
                    isWhite: true, text: "INICIAR SESIÓN", onPressed: () {}),
                SizedBox(height: 30.0),
                TextButton(
                  onPressed: () {},
                  child: Text('¿No tienes una cuenta? Regístrate',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w400,
                        letterSpacing: .22,
                        fontSize: 17,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(gradient: primaryColorGradient),
    ));
  }
}
