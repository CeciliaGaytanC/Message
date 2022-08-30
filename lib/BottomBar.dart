import 'package:flutter/material.dart';


class BotonB extends StatefulWidget {
 const  BotonB({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _BotonBState createState() => new _BotonBState();
}

class _BotonBState extends State<BotonB> {
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

class BottomNavigation extend StatelessWidget{
   const BottomNavigation({Key? key}) : super(key: key);

 @override
   Widget build(BuildContext context) {
    return Container(
      child: Text("Hola"),
    );
  }


}
