import 'package:flutter/material.dart';

import 'package:e_patas/ui/utils/dogemate_icons.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Dogemate.dogemate,
          size: 45,
          color: Colors.white,
        ),
        SizedBox(width: 9.0),
        Text(
          'Dogemate',
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }
}
