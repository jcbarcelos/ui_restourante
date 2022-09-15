import 'package:flutter/material.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    elevation: 6.0,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          accountName: Text(
            'Zé',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          accountEmail: Text(
            'ze@email.com',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          currentAccountPicture: CircleAvatar(
            child: Text(
              'SZ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          currentAccountPictureSize: Size.square(72.0),
          arrowColor: Colors.amber,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.amber,
          ),
          title: const Text("Minha conta"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_basket,
            color: Colors.amber,
          ),
          title: const Text("Meus pedidos"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          title: const Text("Favoritos"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
