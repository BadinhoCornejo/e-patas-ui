import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/secondary_input.dart';
import 'package:e_patas/ui/components/title_icon.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:flutter/material.dart';

class PasswordRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                30.0,
                62.0,
                0.0,
                0.0,
              ),
              child: TitleIcon(
                title: 'Contraseña',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 53.0),
              child: SecondaryInput(
                hintText: 'Mi contraseña',
                isPassword: true,
                isCentered: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 34.0,
                vertical: 38.0,
              ),
              child: MainButton(
                isWhite: false,
                text: 'CREAR CONTRASEÑA',
                onPressed: () {
                  Navigator.pushNamed(context, '/user_register');
                },
              ),
            )
          ],
        ),
        color: backgroundColor,
      ),
    );
  }
}
