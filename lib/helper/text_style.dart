import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle tUrbanistStyle(
          {required double size,
          required double spacing,
          required Color color,
          required FontWeight fontWeight}) =>
      GoogleFonts.urbanist(
        fontWeight: fontWeight,
        fontSize: size,
        letterSpacing: spacing,
        color: color,
      );
}
