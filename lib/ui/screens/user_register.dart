import 'package:e_patas/ui/components/main_button.dart';
import 'package:e_patas/ui/components/register_section_title.dart';
import 'package:e_patas/ui/components/secondary_button.dart';
import 'package:e_patas/ui/components/secondary_input.dart';
import 'package:e_patas/ui/components/text_box_input.dart';
import 'package:e_patas/ui/components/title_icon.dart';
import 'package:e_patas/ui/utils/app_icons.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
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
                  title: 'Mi perfil',
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
                      App.akar_icons_camera,
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
                  isWhite: false, text: 'CREAR PERFIL', onPressed: () {}),
              SizedBox(height: 25.0),
            ],
          ),
        ),
        color: Color(0xFFF4FBF9),
      ),
    );
  }
}
