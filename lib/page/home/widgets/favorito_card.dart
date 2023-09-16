// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FavoritoCard extends StatelessWidget {
  const FavoritoCard({
    Key? key,
    required this.apelido,
    required this.nome,
    required this.telefone,
    required this.avatar,
  }) : super(key: key);
  final String apelido;
  final String nome;
  final String telefone;
  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
      ),
      elevation: 8,
      child: Container(
        width: 120,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48),
            bottomRight: Radius.circular(48),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -40,
              top: 20,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.black54,
                      spreadRadius: 4,
                      offset: Offset(4, 4),
                    )
                  ],
                ),
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage(avatar),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        apelido,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
