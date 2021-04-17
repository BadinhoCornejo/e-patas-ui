import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final double size;
  final void Function() onPressed;

  RoundIconButton.large({
    required this.icon,
    required this.iconColor,
    required this.onPressed,
    required this.iconSize,
  }) : size = 70.0;

  RoundIconButton.small({
    required this.icon,
    required this.iconColor,
    required this.onPressed,
    required this.iconSize,
  }) : size = 50.0;

  RoundIconButton({
    required this.icon,
    required this.iconColor,
    required this.size,
    required this.onPressed,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: const Color(0x11000000), blurRadius: 10.0),
          ]),
      child: RawMaterialButton(
        shape: CircleBorder(),
        elevation: 0.0,
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
