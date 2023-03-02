import 'package:flutter/material.dart';
import 'categoriesPage.dart';
import 'sellPage.dart';
import 'cartPage.dart';
import 'myUserPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //super is used to call the constructor of the base class.
  //Key is a type used in Flutter to identify widgets and allows Flutter
  // to know when a widget that's moved in the tree is the same as a widget that was previously in a different location.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-MERCADO',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Inicio'),
        ),
        body: Center(
          //Center is a widget that centers its child within itself.
            child: ListView(
              //The use of a ListView() widget gives us the option of putting more widgets than the screen can display at once.
              children: <Widget>[
                //I use children: <Widget> because the IDE can know the list type and if I add anything except Widget
                //the IDE will throw an error before building the application
                Container(
                  //I use a lot of Containers because they are the widget that more easily lets me work with padding
                  padding: EdgeInsets.only(bottom: 10),
                  child: Image.asset('img/cover_back.png', fit: BoxFit.fitWidth)
                    //BoxFit.fitWidth adjust the image width to the one of its father
                ),
                Card(
                  semanticContainer: true,
                  //This displays all the children on the card as 1 Widget
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: null,///Should navigate to the cars category
                    child: Column(
                      children: <Widget>[
                        Image.asset('img/cars_index.jpg'),
                        Container(
                          padding: EdgeInsets.only(top: 3, left: 8),
                          alignment: Alignment.centerLeft,
                          child: Text('Autos', style: TextStyle(fontSize: 20)),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 3, left: 8),
                            alignment: Alignment.centerLeft,
                            child: Text('Los mejores precios en autos 0 kilómetro, de alta y media gama.',
                                style: TextStyle(fontSize: 15), textAlign: TextAlign.left)
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(semanticContainer: true,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: null,//Should navigate to the cars category
                    child: Column(
                      children: <Widget>[
                        Image.asset('img/toys_index.jpg'),
                        Container(
                          padding: EdgeInsets.only(top: 3, left: 8),
                          alignment: Alignment.centerLeft,
                          child: Text('Juguetes', style: TextStyle(fontSize: 20)),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 3, left: 8),
                            alignment: Alignment.centerLeft,
                            child: Text('Encuentra aqui los mejores precios para niños/as de cualquier edad.',
                                style: TextStyle(fontSize: 15), textAlign: TextAlign.left)
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(semanticContainer: true,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: null,//Should navigate to the cars category
                    child: Column(
                      children: <Widget>[
                        Image.asset('img/furniture_index.jpg'),
                        Container(
                          padding: EdgeInsets.only(top: 3, left: 8),
                          alignment: Alignment.centerLeft,
                          child: Text('Muebles', style: TextStyle(fontSize: 20)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 3, left: 8),
                          alignment: Alignment.centerLeft,
                          child: Text('Muebles antiguos, nuevos y para armar uno mismo.',
                              style: TextStyle(fontSize: 15), textAlign: TextAlign.left)
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyCategoriesPage()));
                  }, child: Text('Y mucho más!', style: TextStyle(color: Colors.black)))
          ],
        )));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          //This widget is useful when you have a single box that will normally be entirely visible,
          // for example a clock face in a time picker, but you need to make sure it can be scrolled if
          // the container gets too small in one axis (the scroll direction).
          child: Column(
            //Column is a widget that displays its children in a vertical array.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[buildHeader(context), buildMenuItems(context)],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
      color: Colors.black,
      child: InkWell(
          //InkWell is a rectangular area of a Material that responds to touch.
          //onTap: Defines the respons to the touch
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyUserPage()));
          },
          child: Container(
              padding: EdgeInsets.only(
                  top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
              child: Column(children: const [
                CircleAvatar(
                  radius: 52,
                  //AssetImage() is used to select a local image
                  foregroundImage: AssetImage('img/img_perfil.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('example@gmail.com',
                    style: TextStyle(fontSize: 28, color: Colors.white))
              ]))));

  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        //A Wrap lays out each child and attempts to place the child adjacent to the previous child in the main axis
        //given by direction, leaving spacing space in between.
        runSpacing: 16,
        children: [
          ListTile(
              leading: const Icon(Icons.home_max_outlined),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
                //pushReplacement() replaces the current route of the navigator that most tightly encloses the given context by
                // pushing the given route and then disposing the previous route once the new route has finished animating in.
              }),
          ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text('Categorias'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyCategoriesPage()));
                //push() Pushes the given route onto the navigator that most tightly encloses the given context.
              }),
          ListTile(
            leading: const Icon(Icons.sell_outlined),
            title: const Text('Vender'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MySellPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Mi carrito'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyCartPage()));
            },
          )
        ],
      ));
}
