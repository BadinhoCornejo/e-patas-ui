import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final bool isWhite;
  final String text;
  final void Function() onPressed;

  const MainButton({
    Key? key,
    required this.isWhite,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isWhite ? backgroundColor : primaryColor,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(MediaQuery.of(context).size.width - 68, 49.0),
        ),
        shadowColor: MaterialStateProperty.all<Color>(
          primaryColor.withOpacity(0.15),
        ),
      ),
      child: isWhite
          ? Text(
              text,
              style: iOSBody(primaryColor),
            )
          : Text(
              text,
              style: iOSBody(backgroundColor),
            ),
    );
  }
}
