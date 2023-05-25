import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:touchtact/pages/home.dart';
import 'package:touchtact/pages/signup.dart';
import 'package:touchtact/pages/profile.dart';
import 'package:touchtact/pages/exchange_home.dart';

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
        body: App(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0XFF212121),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white, //<-- SEE HERE
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1, 
              color: Colors.white
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1, 
              color: Colors.indigoAccent.shade100
            ),
          ),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.grey[900]
        )
      )
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});
  

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    // HOME PAGE
    HomePage(),
    // EXCHANGE PAGE
    ExchangePage(),
    // PROFILE PAGE
    ProfilePage(),
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
