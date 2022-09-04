import 'package:Samparka/pages/Marvel.dart';
import 'package:Samparka/pages/home.dart';
import 'package:Samparka/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (context){
      return Scaffold(
        appBar: AppBar(
          title: Text(
              "Error"
          ),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Text(
              "Error"
          ),
        ),
      );
    });
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
          return MaterialPageRoute(builder: (context) => HomePage());
      case '/marvel':
        return MaterialPageRoute(builder: (context) => MarvelPage());
      default:
        return _errorRoute();
    }
  }
}
