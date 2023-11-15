import 'package:flutter/material.dart';
import 'package:loginmobile/utils/obtainUser.dart';
import 'package:loginmobile/utils/usuario.dart';

class UserProvider extends ChangeNotifier {

   String? user = "";
    final obtainUsers = ObtainUsers();

  List<Usuario> userList = [];
   
   bool login( String nombre, String password){

    user = nombre;
    return nombre != "" && nombre == password && password != "";
  }


  

}
