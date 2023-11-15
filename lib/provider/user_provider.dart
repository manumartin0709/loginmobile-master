import 'package:flutter/material.dart';
import 'package:loginmobile/utils/usuario.dart';
import 'package:dio/dio.dart';

class UserProvider extends ChangeNotifier {

  List<Usuario> userList = [];
  final _dio = Dio();
  
  Future<bool> validateUser(String nombre) async {
    var url = "https://script.google.com/macros/s/AKfycbxgDBoBsiAsQVDeL_vz8-d9yBuVPbSvpcs5AoYGUvshgPrilAIMVnyxr6arN94mwBI/exec?spreadsheetId=1OVQVSGBANuB3iPB89PXCKZSnUo-O8cMo_FIAZN4f74k&sheet=usuarios";
   
    var response = await _dio.get(url);

    userList = usuarioFromJson(response.data);

    for (var usuario in userList) {

      if(nombre == usuario.nombre)
      {
        return true;
      }
    }

    return false;

  }

}
