import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobooking/constant/color.dart';

class MyButton extends StatelessWidget {
  final Color? backgroundColor;
  final String title;
  final VoidCallback onTap;
  final double s10;
  final Widget? icon;
  final Color? textColor;
  const MyButton(
      {super.key,
      this.backgroundColor,
      required this.title,
      required this.onTap,
      required this.s10,
      this.icon,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: s10 * 5.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(s10 * 6.4),
              color: backgroundColor ?? AppColor.black,
              border: Border.all(
                  width: s10 * .2,
                  color: backgroundColor == null
                      ? Colors.grey
                      : Colors.transparent)),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox(),
              icon != null
                  ? SizedBox(
                      width: s10,
                    )
                  : SizedBox(),
              Text(
                title,
                style: GoogleFonts.nunito(
                    fontSize: s10 * 2,
                    fontWeight: FontWeight.bold,
                    color: backgroundColor == null
                        ? null
                        : textColor ?? Colors.black),
              ),
            ],
          ))),
    );
  }
}
