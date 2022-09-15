import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.amber,
    ),
    title: RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'Treina',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Foold',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart,
        ),
      )
    ],
  );
}
