import 'package:flutter/material.dart';

import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/register_section_title.dart';
import 'package:e_patas/ui/components/secondary_button.dart';
import 'package:e_patas/ui/components/secondary_input.dart';
import 'package:e_patas/ui/components/text_box_input.dart';
import 'package:e_patas/ui/components/title_icon.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';

class UserRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  30.0,
                  62.0,
                  0.0,
                  0.0,
                ),
                child: TitleIcon(
                  title: 'Mi perfil',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    child: Icon(
                      Dogemate.image,
                      color: Colors.grey,
                      size: 42.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: 110.0,
                    right: 0.0,
                    child: GestureDetector(
                      onTap: () {
                        print('ga');
                      },
                      child: Container(
                        width: 35.0,
                        height: 35.0,
                        child: Icon(
                          Dogemate.plus,
                          color: primaryColor,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF9AAACF).withOpacity(0.15),
                              blurRadius: 24,
                              offset:
                                  Offset(0, 8), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  54.0,
                  0.0,
                  54.0,
                  0.0,
                ),
                child: SecondaryInput(
                  hintText: 'Mi nombre',
                  isPassword: false,
                  isCentered: true,
                ),
              ),
              RegisterSectionTitle(text: 'ACERCA DE MÍ'),
              TextBoxInput(),
              RegisterSectionTitle(text: 'MI UBICACIÓN'),
              SecondaryButton(
                text: 'Agregar ciudad',
                onPressed: () {},
              ),
              RegisterSectionTitle(text: 'CONTACTO'),
              SecondaryButton(
                text: 'Agregar información de contacto',
                onPressed: () {},
              ),
              SizedBox(height: 35.0),
              MainButton(
                isWhite: false,
                text: 'CREAR PERFIL',
                onPressed: () {
                  Navigator.pushNamed(context, '/pet_register');
                },
              ),
              SizedBox(height: 38.0),
            ],
          ),
        ),
        color: backgroundColor,
      ),
    );
  }
}
