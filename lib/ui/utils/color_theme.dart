import 'package:flutter/material.dart';

// --- COLORS ---

// --- 1. Solid

const Color primaryColor = Color(0xFF43B692);
const Color backgroundColor = Color(0xFFF4FBF9);
const Color textColor = Color(0xFF0E251E);
const Color warningColor = Color(0xFFF55549);
const Color neutralColor = Colors.black38;
const Color slideIndicatorPassiveColor = Colors.black12;
const Color slideIndicatorActiveColor = Color.fromARGB(250, 255, 255, 255);

// --- 2. Gradients

const LinearGradient primaryColorGradient = LinearGradient(
  colors: [primaryColor, Color(0xFF4CA771)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const LinearGradient rewindColorGradient = LinearGradient(
  colors: [Color(0xFFF8C30A), Color.fromRGBO(255, 196, 18, 0.54)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const LinearGradient generic1CardColorGradient = LinearGradient(
  colors: [Color(0xFF00BFFF), Color(0xFF32DA83)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const LinearGradient generic2CardColorGradient = LinearGradient(
  colors: [Color(0xFFFF6B86), Color(0xFFFFB03A)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
