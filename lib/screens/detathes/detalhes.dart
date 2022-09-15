import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/models/produto.dart';
import 'package:ui_cardapio_restaurante/screens/detathes/componets/body.dart';

class DetalhesScreens extends StatelessWidget {
  late Produto produto;

  DetalhesScreens({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.amber,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: BodyDetalhes(produto: produto),
    );
  }
}
