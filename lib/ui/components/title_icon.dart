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
            icon: Icon(Icons.arrow_back_ios, size: 24.0), onPressed: onPressed),
        Text(title, style: iOSLargeTitle(Colors.black))
      ],
    );
  }
}
