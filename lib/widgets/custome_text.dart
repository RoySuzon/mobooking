import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myHeadingText(context, String text,
    {double? ls,
    double? fs,
    Color? color,
    FontWeight? fw,
    TextAlign? textAline}) {
  return Text(
    text,
    textAlign: textAline,
    style: GoogleFonts.aBeeZee(
      letterSpacing: ls,
      color: color,
      fontSize: fs ?? (MediaQuery.of(context).size.height / 84.2) * 3.2,
      fontWeight: fw ?? FontWeight.bold,
    ),
  );
}
