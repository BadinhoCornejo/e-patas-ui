import 'package:flutter/material.dart';

import 'color_theme.dart';
import 'typography.dart';

ThemeData appTheme(bool isPlatformAndroid) => ThemeData(
      backgroundColor: backgroundColor,
      primaryColor: primaryColor,
      canvasColor: Colors.white,
      errorColor: warningColor,
      textTheme: textTheme(textColor, isPlatformAndroid),
    );
