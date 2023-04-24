import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

Color red = _colorFromHex('#f71515');
Color white = _colorFromHex('#ffffff');
Color liteWhite = _colorFromHex('#f6f6f6');
Color black = _colorFromHex('#000000');
Color blue = _colorFromHex('#2440f1');
Color lightBlue = _colorFromHex('#4396de');

final headingText = GoogleFonts.acme();
final textFont = GoogleFonts.tinos();
