import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static const Color bgColor = Color(0xFFe2e2ff);

  static const Color mainColor = Color(0xFF000633);
  static const Color accentColor = Color(0xFF0065FF);

  static List<Color> cardsColor = [
    Colors.white,
    Colors.green.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.blueGrey.shade100,
    Colors.yellow.shade100,
    Colors.grey.shade100,
    Colors.pink.shade100,
    Colors.blue.shade100,
    Colors.purple.shade100,
  ];

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle mainContent =
      GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.normal);
  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400);
}
