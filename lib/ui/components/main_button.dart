import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final bool isWhite;
  final String text;
  final void Function() onPressed;

  const MainButton(
      {Key? key,
      required this.isWhite,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                isWhite ? Color(0xFFF4FBF9) : Color(0xFF43B692)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0))),
            minimumSize: MaterialStateProperty.all<Size>(Size(347.0, 49.0))),
        child: isWhite
            ? Text(text,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 17,
                    letterSpacing: .22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF43B692)))
            : Text(text,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 17,
                    letterSpacing: .22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)));
  }
}
