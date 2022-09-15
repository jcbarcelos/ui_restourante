import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/models/produto.dart';

class TopDetalhes extends StatelessWidget {
  late Produto produto;
  TopDetalhes({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            produto.nome,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
          const SizedBox(height: 120),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Preço \n',
                  ),
                  TextSpan(
                    text: 'R\$ ${produto.preco}',
                    style: const TextStyle(fontSize: 25),
                  ),
                ]),
              ),
              const SizedBox(width: 100),
              Expanded(
                  child: Hero(
                tag: produto.id,
                child: Image.asset(
                  produto.imagem,
                  fit: BoxFit.cover,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
