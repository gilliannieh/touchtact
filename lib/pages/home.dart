import 'package:flutter/material.dart';
import 'package:touchtact/widgets/business_card.dart';
import 'package:touchtact/widgets/list_of_connections.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HEADER
          Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 40, right: 40),
            child: const Header(),
          ),
          // BIZ CARD
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 37, right: 37),
            child: const BizCard(),
          ),
          // "YOUR CONNECTIONS"
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
            child: Align(
            alignment: Alignment.topLeft,
              child: Text(
                'your connections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ),
          Expanded(
            child: List()
          )
        ]
      )
    );
  }
}

// HEADER CLASS
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text('hello,',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              )),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text('Gilli.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              )),
        ),
        Align(
            alignment: Alignment.center,
            child: Divider(
              color: Colors.white,
              height: 60,
              thickness: 2,
            )),
      ]),
    );
  }
}
