import 'package:flutter/material.dart';
import 'package:e_mercado/main.dart' as m;

class MyCartPage extends StatelessWidget {
  //Displays all the products on the user cart
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: m.NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Mi carrito'),
      ));
}