import 'package:flutter/material.dart';

class ListaCategoria extends StatefulWidget {
  const ListaCategoria({Key? key}) : super(key: key);

  @override
  State<ListaCategoria> createState() => _ListaCategoriaState();
}

class _ListaCategoriaState extends State<ListaCategoria> {
  List<String> categorias = [
    "Hambuguers",
    "Pizzas",
    "Bebidas",
    "Entradas",
    "Sobremesas"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => listBuildCategoria(index),
        ),
      ),
    );
  }

  Widget listBuildCategoria(int index) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          selectedIndex = index;
        })
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorias[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: selectedIndex == index ? Colors.amber : Colors.green,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 2,
              width: selectedIndex == index
                  ? categorias[index].length.toDouble() + 40
                  : 0,
              color: selectedIndex == index ? Colors.amber : Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
