
//import 'package:cookmenu/navegacion';
import 'package:flutter/material.dart';


class BotonBarraNavegacion extends StatefulWidget {
  @override
  _BotonBarraNavegacionState createState() => _BotonBarraNavegacionState();
}

class _BotonBarraNavegacionState extends State<BotonBarraNavegacion> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    //BotonInicio(),
    Favorito(),
    ProfilePage(),
   // Add(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
            title: Text("Selecciona una  recetass"),
          ),
  body: 
   Card(
            // child: Text("HOMEeeee"),
            //
            child: Center(
                //alignment: Alignment.center,
          //Text("Selecciona el tema de receta"),
                child: GridView.count(
              //margin: E
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,dgeInsets.fromLTRB(left, top, right, bottom)
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //Text("Curso en CodeIgniter"),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Desayuno"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Comida"),
                  color: Colors.pink[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Cena"),
                  color: Colors.green[100],

                ),
                Container(
                  padding:  const EdgeInsets.all(8),
                  child: const Text("Bebidas"),
                  color: Colors.orange[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Postres"),
                  color: Colors.blue[100],
                ),
                 Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Otros"),
                  color: Colors.red[100],
                ),

                
               
              ],
            )),
          ),
          

     // body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}

class Favorito extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
 
   return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Selecciona una  receta"),
          ),
       //   drawer: MenuLateral(),
          body: Card(
            // child: Text("HOMEeeee"),
            //
            child: Center(
                //alignment: Alignment.center,
          //Text("Selecciona el tema de receta"),
                child: GridView.count(
              //margin: E
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,dgeInsets.fromLTRB(left, top, right, bottom)
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //Text("Curso en CodeIgniter"),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Desayuno"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Comida"),
                  color: Colors.pink[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Cena"),
                  color: Colors.green[100],

                ),
                Container(
                  padding:  const EdgeInsets.all(8),
                  child: const Text("Bebidas"),
                  color: Colors.orange[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Postres"),
                  color: Colors.blue[100],
                ),
               
              ],
            )),
          ),
        )
        
        );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
    );
  }
 }
