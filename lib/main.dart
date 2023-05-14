import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:touchtact/pages/home.dart';

void main() {
  runApp(const TouchTact());
}

class TouchTact extends StatelessWidget {
  const TouchTact({super.key});

  @override
  Widget build(BuildContext context) {
    // set the status bar color to white
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    // app body
    return MaterialApp(
      home: Scaffold(
        body: Page(),
      )
      );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});
  

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    // HOME PAGE
    const HomePage(),
    // EXCHANGE PAGE placeholder
    Text(
      'Exchange Page',
      style: optionStyle,
    ),
    // PROFILE PAGE placeholder
    Text(
      'Profile Page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'exchange',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.indigoAccent[100],
        onTap: _onItemTapped,
      ),
    );
  }
}
