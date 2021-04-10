import 'package:e_patas/ui/utils/utils.dart';
import 'package:flutter/material.dart';

class MainInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  static OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF43B692)),
    borderRadius: BorderRadius.circular(30.0),
  );

  const MainInput({Key? key, required this.hintText, required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.0,
      height: 50.0,
      child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: hintText,
              hintStyle: iOSBody(isPassword ? Colors.grey : Color(0xFF43B692)),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: border,
              border: border)),
    );
  }
}
