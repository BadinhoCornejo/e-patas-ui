import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/main_input.dart';
import 'package:e_patas/ui/utils/app_icons.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Logo(), flex: 1),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  MainInput(hintText: 'someuser@gmail.com', isPassword: false),
                  SizedBox(height: 40.0),
                  MainInput(hintText: 'Contraseña', isPassword: true)
                ],
              )),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MainButton(isWhite: true, text: "INGRESAR", onPressed: () {}),
                SizedBox(height: 30.0),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(App.akar_icons_arrow_back, color: Colors.white),
                  label: Text('Regresar',
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
