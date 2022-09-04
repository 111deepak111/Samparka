import "package:Samparka/APIs/urls.dart";
import 'package:Samparka/APIs/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class ApiService{
  Future<List<User>?> getUsers() async{
    try {
      var url = Uri.parse(Urls.baseUrl+Urls.userUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<User> _model =userFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}