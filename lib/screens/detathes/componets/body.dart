// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/models/produto.dart';
import 'package:ui_cardapio_restaurante/screens/detathes/componets/item_info_produto.dart';
import 'package:ui_cardapio_restaurante/screens/detathes/componets/top_detalhes.dart';

class BodyDetalhes extends StatelessWidget {
  late Produto produto;

  BodyDetalhes({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.87,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ItemInfoProduto(produto: produto),
                    ],
                  ),
                ),
                TopDetalhes(produto: this.produto),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
