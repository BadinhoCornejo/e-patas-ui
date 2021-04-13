import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const SecondaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        height: 45.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 18.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: iOSBody(neutralColor),
              ),
              Icon(
                Icons.navigate_next_rounded,
                color: Colors.black.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
