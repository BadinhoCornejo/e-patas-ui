import 'package:flutter/material.dart';

class NumberInput extends StatelessWidget {
  final String text;

  const NumberInput({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w300,
              fontSize: 16.0,
              color: Colors.black.withOpacity(0.4),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
