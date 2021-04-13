import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class TitleIcon extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const TitleIcon({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Dogemate.arrow_back_ios,
            size: 24.0,
            color: textColor,
          ),
          onPressed: onPressed,
        ),
        Text(
          title,
          style: iOSLargeTitle(textColor),
        )
      ],
    );
  }
}
