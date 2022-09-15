import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/models/produto.dart';
import 'package:ui_cardapio_restaurante/screens/detathes/componets/botao_comprar.dart';

// ignore: must_be_immutable
class ItemInfoProduto extends StatelessWidget {
  late Produto produto;
  ItemInfoProduto({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: <Widget>[
        Text(
          produto.descricao,
          style: const TextStyle(
            height: 1.5,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 250),
        const BotaoComprar()
      ]),
    );
  }
}
