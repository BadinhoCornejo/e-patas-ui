import 'package:flutter/material.dart';

import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/main_input.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    30.0,
                    80.0,
                    30.0,
                    80.0,
                  ),
                  child: Logo(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    bottom: 50.0,
                  ),
                  child: Column(
                    children: [
                      MainInput(
                        hintText: 'someuser@gmail.com',
                        isPassword: false,
                      ),
                      SizedBox(height: 30.0),
                      MainInput(
                        hintText: 'Contraseña',
                        isPassword: true,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MainButton(
                        isWhite: true,
                        text: "INGRESAR",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Dogemate.arrow_back_generic,
                          color: Colors.white,
                          size: 16,
                        ),
                        label: Text(
                          'Regresar',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400,
                            letterSpacing: .22,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: primaryColorGradient,
        ),
      ),
    );
  }
}
