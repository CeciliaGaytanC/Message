import 'package:bottom_bar/bottom_bar.dart';

import 'package:flutter/material.dart';

void main() => runApp(botBar());


  int _currentPage = 0;
  final _pageController = PageController();

class botBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          //setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          //setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Configiracion'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}