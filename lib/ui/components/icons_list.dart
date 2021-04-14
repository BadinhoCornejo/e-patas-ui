import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:flutter/material.dart';

class IconsList extends StatelessWidget {
  final index;

  const IconsList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Dogemate.dogemate,
              size: 28.0,
              color: index == 0 ? primaryColor : Colors.black.withOpacity(0.45),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Dogemate.chat,
              size: 28.0,
              color: index == 1 ? primaryColor : Colors.black.withOpacity(0.45),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Dogemate.user,
              size: 28.0,
              color: index == 2 ? primaryColor : Colors.black.withOpacity(0.45),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Dogemate.settings,
              size: 28.0,
              color: index == 3 ? primaryColor : Colors.black.withOpacity(0.45),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
