// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ContatinhoModel {
  String id;
  String avatar;
  String nome;
  String genero;
  String apelido;
  String email;
  String telefone;
  String sobre;
  ContatinhoModel({
    required this.id,
    required this.avatar,
    required this.nome,
    required this.genero,
    required this.apelido,
    required this.email,
    required this.telefone,
    required this.sobre,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'avatar': avatar,
      'nome': nome,
      'genero': genero,
      'apelido': apelido,
      'email': email,
      'telefone': telefone,
      'sobre': sobre,
    };
  }

  factory ContatinhoModel.fromMap(Map<String, dynamic> map) {
    return ContatinhoModel(
      id: map['id'] as String,
      avatar: map['avatar'] as String,
      nome: map['nome'] as String,
      genero: map['genero'] as String,
      apelido: map['apelido'] as String,
      email: map['email'] as String,
      telefone: map['telefone'] as String,
      sobre: map['sobre'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContatinhoModel.fromJson(String source) =>
      ContatinhoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
