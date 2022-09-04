import 'package:Samparka/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends MyApp with PreferredSizeWidget{
  late String head;
  MyAppBar(this.head);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar>{

  ThemeData theme = MyApp.theme;
  IconData themeIcon = MyApp.themeIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.head,
        textScaleFactor: 1.2,
        style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.w700
        ),
      ),
      actions: [
        IconButton(onPressed: ()=>themeGlobalKey.currentState!.changeTheme(),
            icon: Icon(themeIcon))
      ],
    );
  }
}
