import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:e_patas/ui/utils/typography.dart';
import 'package:flutter/material.dart';

class DogChat extends StatelessWidget {
  final String filePath;
  final String name;
  final String message;
  final bool isSent;
  final bool isRead;
  final void Function() onPressed;

  const DogChat({
    Key? key,
    required this.filePath,
    required this.name,
    required this.message,
    required this.isSent,
    required this.isRead,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 21.0,
          bottom: 20.0,
        ),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: 42.5,
              backgroundImage: AssetImage(filePath),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    letterSpacing: .25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    if (isSent)
                      Icon(
                        Dogemate.arrow_back_generic,
                        color: Colors.black.withOpacity(0.45),
                        size: 10.0,
                      ),
                    if (isSent)
                      SizedBox(
                        width: 10.0,
                      ),
                    if (isRead)
                      Text(
                        message,
                        style: androidBody2(
                          Colors.black,
                        ),
                      )
                    else
                      Text(
                        message,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          letterSpacing: .25,
                          color: Colors.black,
                        ),
                      ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
