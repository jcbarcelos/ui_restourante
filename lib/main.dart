import 'package:flutter/material.dart';
import 'package:ui_cardapio_restaurante/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Cardapio de Restaurante',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.dark(), useMaterial3: false),
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomeScreens(),
    );
  }
}
