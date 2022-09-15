import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/screens/home/components/app_bar.dart';
import 'package:ui_cardapio_restaurante/screens/home/components/body.dart';
import 'package:ui_cardapio_restaurante/screens/home/components/drawer.dart';
import 'package:ui_cardapio_restaurante/screens/home/components/lista_produtos.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        drawer: drawer(context),
        body: Column(
          children: const <Widget>[
            Body(),
            ListaProdutos(),
          ],
        ));
  }
}
