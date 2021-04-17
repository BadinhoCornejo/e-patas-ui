import 'package:e_patas/ui/utils/utils.dart';
import 'package:flutter/material.dart';

class MatchesTile extends StatelessWidget {
  final String text;

  const MatchesTile({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
        left: 21.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: iOSBody(primaryColor),
        ),
      ),
    );
  }
}
