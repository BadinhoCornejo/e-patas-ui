import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class SecondaryInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final bool isCentered;

  static UnderlineInputBorder border = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.0));

  const SecondaryInput({
    Key? key,
    required this.hintText,
    required this.isPassword,
    required this.isCentered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: iOSTitle2(textColor),
        enabledBorder: border,
        border: border,
        focusedBorder: border,
      ),
    );
  }
}
