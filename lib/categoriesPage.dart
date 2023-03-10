import 'package:flutter/material.dart';
import 'package:e_mercado/main.dart' as m;

class MyCategoriesPage extends StatelessWidget {
  //Categories page. Displays all the categories available
  const MyCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: m.NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Categorias'),
      ));
}
