import 'package:e_patas/ui/utils/utils.dart';
import 'package:flutter/material.dart';

class MainInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  static OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF43B692),
    ),
    borderRadius: BorderRadius.circular(30.0),
  );

  const MainInput(
      {Key? key,
      required this.hintText,
      required this.isPassword,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 68,
      height: 48.0,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        cursorColor: primaryColor,
        style: iOSBody(primaryColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
          hintText: hintText,
          hintStyle: iOSBody(neutralColor),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: border,
          border: border,
          focusColor: primaryColor,
        ),
      ),
    );
  }
}
