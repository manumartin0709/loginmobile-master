import 'package:dio/dio.dart';
import 'package:loginmobile/utils/usuario.dart';

class ObtainUsers {
  final _dio = Dio();

  Future<List<Usuario>> getAnswer() async {
    final response = await _dio.get("https://script.google.com/macros/s/AKfycbycYB_qApzWkS0ZiAvYMrlGFF_aWmeJtKq2ph7XCKSo_DC0pJ7WiLBLXeZavBWobVMz/exec?spreadsheetId=1gTaxDxiY5CosjqRBp7Z2P5F4bWKmMBkrN4mzkC0jzd0&sheet=usuarios");

    final List<Usuario> usuarios = usuarioFromJson(response.data);

    return usuarios;
  }
}