import 'package:contatinhos/model/contatinho_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../mocado/contatinho_data.dart';
import '../contato/contado_page.dart';
import 'widgets/favorito_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DadosMocadosContatinhos dados = DadosMocadosContatinhos();

  List<ContatinhoModel> agendaDeFavoritos = [];

  Future<void> meusContatinhos() async {
    agendaDeFavoritos = await dados.meuContatos();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    meusContatinhos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const FaIcon(
          FontAwesomeIcons.addressBook,
          color: Colors.orange,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        title: const Text(
          'Contatinhos',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: agendaDeFavoritos.length,
                  itemBuilder: (_, index) {
                    ContatinhoModel favorito = agendaDeFavoritos[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      child: FavoritoCard(
                        apelido: favorito.apelido,
                        nome: favorito.nome,
                        telefone: favorito.telefone,
                        avatar: favorito.avatar.toString(),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: agendaDeFavoritos.length,
                itemBuilder: (_, index) {
                  ContatinhoModel contato = agendaDeFavoritos[index];
                  return ListTile(
                    iconColor: Colors.orange,
                    leading: const FaIcon(FontAwesomeIcons.user),
                    title: Text(
                      contato.nome,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ContadoPage(
                                  contato: contato,
                                )));
                      },
                      icon: const FaIcon(FontAwesomeIcons.idCard),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
