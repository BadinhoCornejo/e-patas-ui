import 'package:flutter/material.dart';

// --- TYPOGRAPHY ---

TextTheme textTheme(Color color, bool isPlatformAndroid) => TextTheme(
      bodyText2: isPlatformAndroid ? androidBody2(color) : iOSBody(color),
      headline1: androidHeadline1(),
      headline5: androidHeadline5(color),
      headline6:
          isPlatformAndroid ? androidHeadline6(color) : iOSHeadline(color),
      caption: isPlatformAndroid ? androidCaption(color) : iOSCaption1(color),
      overline: androidOverline(color),
    );

const String fontName = "Quicksand";

// --- 1. TextStyle | Android

TextStyle androidHeadline1() => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      fontSize: 45,
      color: Colors.white,
    );

TextStyle androidHeadline5(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontSize: 24,
      color: color,
    );

TextStyle androidHeadline6(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      fontSize: 20,
      color: color,
    );

TextStyle androidBody2(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      fontSize: 14,
      color: color,
    );

TextStyle androidCaption(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      fontSize: 12,
      color: color,
    );

TextStyle androidOverline(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      fontSize: 10,
      color: color,
    );

// --- 2. TextStyle | iOS

TextStyle iOSLargeTitle(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .41,
      fontSize: 34,
      color: color,
    );

TextStyle iOSTitle1(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .34,
      fontSize: 28,
      color: color,
    );

TextStyle iOSTitle2(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .28,
      fontSize: 22,
      color: color,
    );

TextStyle iOSTitle3(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .25,
      fontSize: 20,
      color: color,
    );

TextStyle iOSHeadline(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      letterSpacing: .22,
      fontSize: 17,
      color: color,
    );

TextStyle iOSBody(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .22,
      fontSize: 17,
      color: color,
    );

TextStyle iOSCallout(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .21,
      fontSize: 16,
      color: color,
    );

TextStyle iOSSubhead(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .20,
      fontSize: 15,
      color: color,
    );
TextStyle iOSFootnote(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .18,
      fontSize: 13,
      color: color,
    );

TextStyle iOSCaption1(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .16,
      fontSize: 12,
      color: color,
    );

TextStyle iOSCaption2(Color color) => TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      letterSpacing: .13,
      fontSize: 11,
      color: color,
    );
