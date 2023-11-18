import 'package:artificial_test/resources/Color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ShowSnackBar(BuildContext context, String msg, Color bgColor) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: bgColor,
    padding: const EdgeInsets.all(10),
    content: Text(msg,
        style: GoogleFonts.montserrat(
          fontSize: 20,
          color: white,
          fontWeight: FontWeight.w500,
        )),
  ));
}
