import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  late String head;
  late IconButton icobtn;
  // late IconData theme;
  MyAppBar(this.head,this.icobtn);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        head,
        textScaleFactor: 1.2,
        style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.w700
        ),
      ),
      actions: [
        icobtn
      ],
    );
  }
}
