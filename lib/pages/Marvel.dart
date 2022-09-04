import 'package:Samparka/APIs/login_validation.dart';
import 'package:flutter/material.dart';
import 'package:Samparka/widgets/drawer.dart';
import '../APIs/user_model.dart';
import '../widgets/appbar.dart';

class MarvelPage extends StatefulWidget{
  @override
  State<MarvelPage> createState() => _MarvelPageState();
}

class _MarvelPageState extends State<MarvelPage> {
  late List<User>? _users;
  late String textVal;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  void _getData() async{
    _users = (await ApiService().getUsers());
    Future.delayed(const Duration(seconds: 1))
        .then((value) => setState((){
      textVal = _users.toString();
    }));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar("Marvel"),
      drawer: MyDrawer(),
      body: Center(
        child:_users == null ? Center(child:CircularProgressIndicator()):
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text(
              textVal
            ),
          ],
        ),
      ),
    );
  }
}