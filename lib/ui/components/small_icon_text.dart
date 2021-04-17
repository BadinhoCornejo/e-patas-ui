import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class SmallIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const SmallIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 17.0,
            color: Colors.black.withOpacity(0.45),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: iOSBody(
              Color(0xFF0E251E),
            ),
          ),
        ],
      ),
    );
  }
}
