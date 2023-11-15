
import 'package:loginmobile/screens/login_screen.dart';
import 'package:loginmobile/screens/second_screen.dart';
import 'package:flutter/material.dart';




class Navigate {
  static Map<String, Widget Function(BuildContext)> routes =   {
    '/' : (context) =>  const LoginScreen(),
    '/sing-in' : (context) => const SecondScreen(nombre: ''),
    
  };
}
