// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:contatinhos/model/contatinho_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContadoPage extends StatelessWidget {
  const ContadoPage({
    Key? key,
    required this.contato,
  }) : super(key: key);
  final ContatinhoModel contato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48),
                  bottomRight: Radius.circular(48),
                ),
                color: Colors.orange,
              ),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: FittedBox(
                  child: Text(
                    contato.nome,
                    style: const TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.orange.shade200,
              child: ListView(
                children: [
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.anchor),
                    title: Text(contato.apelido),
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.phoneFlip),
                    title: Text(contato.telefone),
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.envelopeCircleCheck),
                    title: Text(contato.email),
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.mailchimp),
                    title: Text(contato.genero),
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.idCardClip),
                    title: Text(contato.id),
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.book),
                    title: Text(
                      contato.sobre,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
                color: Colors.orange,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  contato.avatar,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
