import 'package:flutter/material.dart';
import 'package:e_mercado/main.dart' as m;

class MySellPage extends StatefulWidget {
  //Sell page. Displays a form to post a product
  const MySellPage({Key? key}) : super(key: key);

  @override
  State<MySellPage> createState() => _SellPageState();
}
class _SellPageState extends State<MySellPage>{
  final nameController = TextEditingController();
  //This controller will save us from a data loss when the user scrolls through the listView form
  final formKey = GlobalKey<FormState>();
  //GlobalKey it's a variable that give us access to the Widget tree, thus, gives us access to the state

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: m.NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Vender'),
      ),
    body: Form(
      key: formKey,
      child: ListView(
          children: <Widget>[
            Text('Vender', style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
            Text('Ingresa los datos del producto a vender', style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Información del producto'),
                  TextFormField(decoration: InputDecoration(labelText: 'Nombre'),
                  controller: nameController,
                  validator: (value){
                    //validator will validate the value, if we return a message the user will get an error
                    //This function is executed once the formKey.currentState.validate() is called
                    if(value == null) return 'Debes indicar el nombre del producto.';
                  },),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()) {
                          //I put ! after currentState because that way I let the compiler know that that property won't be null
                          setState(() {
                            ///Try to show a message that says that the product has been posted (although it won't)
                          });
                        }
                      },
                      child: const Text('Submit'),
                    ),),
                ],
              ),
            )
          ],
      ),
    ),
  );
}