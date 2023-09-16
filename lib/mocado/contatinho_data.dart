import 'dart:convert';

import 'package:contatinhos/model/contatinho_model.dart';
import 'package:flutter/services.dart';

class DadosMocadosContatinhos {
  Future<List<ContatinhoModel>> meuContatos() async {
    final response = await rootBundle.loadString('lib/mocado/dados.json');
    var jsonArquivo = jsonDecode(response);
    return (jsonArquivo as List)
        .map((e) => ContatinhoModel.fromJson(jsonEncode(e)))
        .toList();
  }
}
