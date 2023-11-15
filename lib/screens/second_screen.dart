import 'package:flutter/material.dart';
import 'package:loginmobile/provider/user_provider.dart';
import 'package:loginmobile/utils/usuario.dart';
import 'package:loginmobile/widgets/custom_bar.dart';
import 'package:loginmobile/widgets/custom_menu.dart';
import 'package:loginmobile/widgets/custom_user_header.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {

  final String nombre;



  const SecondScreen({super.key, required this.nombre});
  
  @override
  Widget build(BuildContext context) {

    final provider = context.watch<UserProvider>();

    return Scaffold(   
      backgroundColor: Colors.white, 
      body: Stack(
        children: [
          Container(//Fondo azul arriba
            color: Colors.blue[800],
            width: double.infinity,
            height: 200,
          ),
          FutureBuilder(
            future: provider.validateUser(nombre),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data != null) {
                return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(//columna con los objetos de la pantalla
                          children: [
                            Image (image: AssetImage("assets/images/iseneca.png"),),
                            SizedBox(
                              height: 20,
                            ),
                            CustomUserHeader(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomMenu(),
                            CustomBar()
                          ],
                        ),
                      ),
                    );
              } else {
                return const Center(
                  child: Text('Loading.....'),
                );
              }
            },
          ),
          
        ],
      ),
    );
  }

  
}






