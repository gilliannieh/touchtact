import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';
import 'package:touchtact/widgets/connection_popup.dart';
import 'package:touchtact/widgets/business_card.dart';

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
            child: ListOfConnections()
          )
        ],
      ),
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

// LIST OF CONNECTIONS CLASS
class ListOfConnections extends StatelessWidget {
  final data = ConnectionsData.connectionData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 50),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                '${data[index]['name']}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              subtitle: Text(
                'connected ${data[index]['time']} ago',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300
                )
              ),
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return ConnectionPopup();
                  },
                );
              }
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Divider(
                color: Colors.white,
                height: 10,
                thickness: 1,
              ),
            )
          ]
        );
      }
    );
  }
}
