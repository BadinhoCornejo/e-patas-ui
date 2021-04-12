import 'package:flutter/material.dart';

import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/number_input.dart';
import 'package:e_patas/ui/components/register_section_title.dart';
import 'package:e_patas/ui/components/secondary_button.dart';
import 'package:e_patas/ui/components/secondary_input.dart';
import 'package:e_patas/ui/components/text_box_input.dart';
import 'package:e_patas/ui/components/title_icon.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';

class PetRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 32.0, 0.0, 0.0),
                child: TitleIcon(
                  title: 'Mi mascota',
                  onPressed: () {},
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
                          Icons.add,
                          color: primaryColor,
                          size: 24.0,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 2.0,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
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
                padding: const EdgeInsets.fromLTRB(54.0, 0.0, 54.0, 0.0),
                child: SecondaryInput(
                  hintText: '¿Cuál es su nombre?',
                  isPassword: false,
                  isCentered: true,
                ),
              ),
              RegisterSectionTitle(text: 'AGREGA UNA DESCRIPCIÓN'),
              TextBoxInput(),
              RegisterSectionTitle(text: '¿CUÁL ES SU RAZA?'),
              SecondaryButton(
                text: 'Seleccionar raza',
                onPressed: () {},
              ),
              RegisterSectionTitle(text: '¿CUÁL ES SU EDAD?'),
              NumberInput(text: 'Selecciona una edad'),
              SizedBox(height: 35.0),
              MainButton(
                isWhite: false,
                text: 'AGREGAR MASCOTA',
                onPressed: () {},
              ),
              SizedBox(height: 25.0),
            ],
          ),
        ),
        color: Color(0xFFF4FBF9),
      ),
    );
  }
}
