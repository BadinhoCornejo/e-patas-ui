import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class TextBoxInput extends StatefulWidget {
  @override
  _TextBoxInputState createState() => _TextBoxInputState();
}

class _TextBoxInputState extends State<TextBoxInput> {
  int _counter = 500;

  _decrementCounter(int length) {
    setState(() {
      _counter = 500 - length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          bottom: 8.0,
        ),
        child: TextField(
          onChanged: (text) {
            _decrementCounter(text.length);
          },
          maxLength: 500,
          maxLines: 2,
          decoration: InputDecoration(
            hintText:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            hintStyle: iOSBody(neutralColor),
            counterText: _counter.toString(),
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
