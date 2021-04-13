import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class RegisterSectionTitle extends StatelessWidget {
  final String text;

  const RegisterSectionTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            18.0,
            30.0,
            0.0,
            10.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: fontName,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              color: textColor,
              letterSpacing: .22,
            ),
          ),
        ),
      ],
    );
  }
}
