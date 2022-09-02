import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends Drawer {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.grey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height/5 ,
            child: DrawerHeader(
              margin: const EdgeInsets.only(bottom: 0),
              padding: const EdgeInsets.only(top: 25, bottom: 0),
              decoration: const BoxDecoration(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: const Icon(
                        CupertinoIcons.arrow_up_doc_fill,
                        size: 35,
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30),
                    child: const Text(
                      "UVCE GA",
                      textAlign: TextAlign.center,
                      textScaleFactor: 2,
                      style: TextStyle(fontFamily: "Arial Hebrew"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyDrawerTiles("Search", CupertinoIcons.search_circle_fill),
          MyDrawerTiles("News", CupertinoIcons.news_solid),
          MyDrawerTiles("Chronicles", CupertinoIcons.mic_circle_fill),
          MyDrawerTiles("Donate", CupertinoIcons.money_dollar_circle_fill)
        ],
      ),
    );
  }
}

class MyDrawerTiles extends StatelessWidget {
  late String head;
  late IconData ico;
  MyDrawerTiles(this.head, this.ico);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 20,
      title: Text(
        head,
        textScaleFactor: 2,
        style: const TextStyle(),
      ),
      leading: Icon(
        ico,
        size: 35,
      ),
      onTap: () {},
    );
  }
}
