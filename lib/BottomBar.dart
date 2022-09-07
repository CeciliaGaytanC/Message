import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';


class BotonB extends StatefulWidget {

  
 const  BotonB({Key? key, required String title}): super(key: key);

@override
State<BotonB> createState()=> _BotonBState();

 // _BotonBState createState() => new _BotonBState();
}

class _BotonBState extends State<BotonB> {
  int _selectedIndex =1;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
   selectedIndex: _selectedIndex,
   showElevation: true, // use this to remove appBar's elevation
   onItemSelected: (index) => setState(() {
              _selectedIndex = index;
          
    }),
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.apps),
       title: Text('Home'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.people),
         title: Text('Users'),
         activeColor: Colors.purpleAccent
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.message),
         title: Text('Messages'),
         activeColor: Colors.pink
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.settings),
         title: Text('Settings'),
         activeColor: Colors.blue
     ),
   ],
)
      //body: MuestraPantalla(_selectedIndex),
     
    );
  }
  
  }





class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  //final String title;

  @override
   Widget build(BuildContext context) {
    return Container(
      child: Text("Home"),
    );
  }
}

class Agregar extends StatelessWidget{
   const Agregar({Key? key}) : super(key: key);

 @override
   Widget build(BuildContext context) {
    return Container(
      child: Text("Hola"),
    );
  }


}


class Otross extends StatelessWidget{
   const Otross({Key? key}) : super(key: key);

 @override
   Widget build(BuildContext context) {
    return Container(
      child: Text("Hola"),
    );
  }


}

MuestraPantalla(int selectedIndex) {

  switch (selectedIndex)  {


case 1:
return Agregar();
case 2:
return Otross();

}    
}
