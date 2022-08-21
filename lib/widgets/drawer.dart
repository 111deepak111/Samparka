import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


class MyDrawer extends Drawer{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      // backgroundColor: Colors.grey,
      child: SafeArea(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children:[
              Container(
                // color: Colors.black,
                padding: EdgeInsets.only(top: 25,bottom: 12),
                    child: Text(
                        "UVCE GA",
                      style: TextStyle(
                        // color: Colors.white
                      ),
                  )
              ),
              MyDrawerTiles("Search", CupertinoIcons.search),

            ]
          ),
      ),
    );
  }
}

class MyDrawerTiles extends StatelessWidget{
  late String head;
  late IconData ico;
  MyDrawerTiles(this.head, this.ico){}
  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(this.head,style: TextStyle(color:Colors.white),),
      leading: Icon(this.ico,color: Colors.white,),
      onTap: (){

      },
    );
  }
}