import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/secondary_input.dart';
import 'package:e_patas/ui/components/title_icon.dart';
import 'package:flutter/material.dart';

class EmailRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 32.0, 0.0, 0.0),
              child: TitleIcon(title: 'Nueva cuenta', onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(54.0),
              child: SecondaryInput(
                hintText: 'Mi correo electrónico',
                isPassword: false,
                isCentered: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(33.0),
              child: MainButton(
                  isWhite: false, text: 'AGREGAR EMAIL', onPressed: () {}),
            )
          ],
        ),
        color: Color(0xFFF4FBF9),
      ),
    );
  }
}
