import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobooking/constant/color.dart';

Text myHeadingText(context, String text,
    {double? ls,
    double? fs,
    Color? color,
    FontWeight? fw,
    double? ws,
    int? ml,
    TextAlign? textAline}) {
  return Text(
    text,
    maxLines: ml,
    overflow: ml != null ? TextOverflow.ellipsis : null,
    textAlign: textAline,
    style: GoogleFonts.nunitoSans(
      letterSpacing: ls,
      wordSpacing: ws,
      color: color ?? AppColor.white,
      fontSize: fs ?? (MediaQuery.of(context).size.height / 84.2) * 3.2,
      fontWeight: fw ?? FontWeight.bold,
    ),
  );
}
