import 'package:flutter/material.dart';

class DogAvatar extends StatelessWidget {
  final String filePath;
  final String name;
  final void Function() onPressed;

  const DogAvatar(
      {Key? key,
      required this.filePath,
      required this.onPressed,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 42.5,
              backgroundImage: AssetImage(filePath),
            ),
            SizedBox(height: 4.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                letterSpacing: .21,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
