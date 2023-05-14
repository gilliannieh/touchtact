import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchtact/data/connections_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // BACKGROUND
        Expanded(
          child: Container(
            color: Colors.grey[900],
          ),
        ),
        // BODY
        Column(
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
                        fontWeight: FontWeight.w500),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 37, right: 37),
                child: ListOfConnections()
            )
          ],
        ),
      ]),
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

// BIZ CARD CLASS
class BizCard extends StatefulWidget {
  const BizCard({super.key});

  @override
  State<BizCard> createState() => _BizCardState();
}

class _BizCardState extends State<BizCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 0,
        color: Colors.grey[850],
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
              width: 350,
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GILLI NIEH',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Evanston, Illinois',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                      //height: 25,
                      child: Row(children: [
                    SizedBox(
                        width: 20,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child:
                              Icon(Icons.phone, color: Colors.white, size: 15),
                        )),
                    SizedBox(
                        //width: 250,
                        child: Text('(650) 823-1821',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12))),
                  ])),
                  SizedBox(
                      //height: 25,
                      child: Row(children: [
                    SizedBox(
                        width: 20,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child:
                              Icon(Icons.mail, color: Colors.white, size: 15),
                        )),
                    SizedBox(
                        //width: 250,
                        child: Text('gilliannieh@gmail.com',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12))),
                  ])),
                ],
              )),
        ));
  }
}

// LIST OF CONNECTIONS CLASS
class ListOfConnections extends StatelessWidget {
  final connectionsData = ConnectionsData.getData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: connectionsData.length,
      itemBuilder: (data, index) {
      }
    );
  }
}

// CARD WIDGET

Widget connectionCard(data) {
  return Card(
    elevation: 0,
    color: Colors.transparent,
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            data['name'],
            style: TextStyle(
              color: Colors.white, 
              fontSize: 15, 
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            data['time'],
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300
            )
          ),
        )
      ],
    ),
  );
}
