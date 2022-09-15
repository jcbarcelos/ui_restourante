import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/screens/home/components/lista_categoria.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [ListaCategoria()],
    );
  }
}
