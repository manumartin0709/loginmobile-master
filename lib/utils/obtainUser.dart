import 'package:dio/dio.dart';
import 'package:loginmobile/utils/usuario.dart';

class ObtainUsers {
  final _dio = Dio();

  Future<List<Usuario>> getAnswer() async {
    final response = await _dio.get("https://script.google.com/macros/s/AKfycbxgDBoBsiAsQVDeL_vz8-d9yBuVPbSvpcs5AoYGUvshgPrilAIMVnyxr6arN94mwBI/exec?spreadsheetId=1OVQVSGBANuB3iPB89PXCKZSnUo-O8cMo_FIAZN4f74k&sheet=usuarios");

    final List<Usuario> usuarios = usuarioFromJson(response.data);

    return usuarios;
  }
}
