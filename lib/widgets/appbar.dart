import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends AppBar {
  late String head;
  // late IconData theme;
  MyAppBar(this.head);

  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        head,
        textScaleFactor: 1.5,
        style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.w600
        ),
      ),

    );
  }
}
