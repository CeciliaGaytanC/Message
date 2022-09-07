import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';



class BotonBot extends StatefulWidget {

  
 const  BotonBot({Key? key, required String title}): super(key: key);

@override
State<BotonBot> createState()=> _BotonBotState();

 // _BotonBState createState() => new _BotonBState();
}

class _BotonBotState extends State<BotonBot> {

  int _currentIndex = 0;
  //BotonBot _BotonBotState;

  //@override
  //void initState() {
    //super.initState();
    //BotonBot = PageController();
  //}

  //@override
 // void dispose() {
    //BotonBot.dispose();
   // super.dispose();
 // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Bar")),
      body: SizedBox.expand(
        child: PageView(
         // controller: BotonBot,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Colors.blueGrey,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
       // onItemSelected: (index) {
         // setState(() => _currentIndex = index);
          //_BotonBotState.jumpToPage(index);
        //},
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Item One'),
            icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
            title: Text('Item Two'),
            icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
            title: Text('Item Three'),
            icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
            title: Text('Item Four'),
            icon: Icon(Icons.settings)
          ),
        ],
      ),
    );
  }
}