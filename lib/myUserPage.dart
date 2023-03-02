import 'package:flutter/material.dart';
import 'package:e_mercado/main.dart' as m;

class MyUserPage extends StatelessWidget {
  //Displays the user information
  const MyUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: m.NavigationDrawer(),
      //drawer is the hamburger menu at the top of the app
      appBar: AppBar(
        //appBar is the bar on top of the app, contains a title and the drawer
        backgroundColor: Colors.black,
        title: const Text('Mi perfil'),
      ));
}