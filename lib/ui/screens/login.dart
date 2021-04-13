import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

import 'package:e_patas/ui/components/logo.dart';
import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/main_input.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: primaryColorGradient),
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Logo(),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MainInput(
                          controller: emailController,
                          hintText: 'someuser@gmail.com',
                          isPassword: false,
                        ),
                        SizedBox(height: 30.0),
                        MainInput(
                          controller: passwordController,
                          hintText: 'Contraseña',
                          isPassword: true,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 38),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                              color: backgroundColor,
                              size: 16,
                            ),
                            label: Text(
                              'Regresar',
                              style: iOSBody(backgroundColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
