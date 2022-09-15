import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/models/produto.dart';
import 'package:ui_cardapio_restaurante/screens/detathes/detalhes.dart';

class ListaProdutos extends StatelessWidget {
  const ListaProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            childAspectRatio: 0.90,
          ),
          itemCount: produtos.length,
          itemBuilder: (context, index) => buildCardProdutos(context, index),
        ),
      ),
    );
  }

  Widget buildCardProdutos(context, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      child: Material(
        elevation: 6.0,
        shadowColor: Colors.amber,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalhesScreens(produto: produtos[index]),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(0),
                  child: Hero(
                    tag: produtos[index].id,
                    child: Image.asset(
                      produtos[index].imagem,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Text(
                  produtos[index].nome,
                  style: const TextStyle(fontSize: 12),
                ),
                const Divider(
                  color: Colors.amber,
                ),
                Text(
                  "R\$ ${produtos[index].preco.toString()}",
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
