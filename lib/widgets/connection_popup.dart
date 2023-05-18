import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectionPopup extends StatefulWidget {
  ConnectionPopup({super.key});

  @override
  State<ConnectionPopup> createState() => _ConnectionPopupState();
}

class _ConnectionPopupState extends State<ConnectionPopup> {
  final data = ConnectionsData.connectionData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 1200,
          child: ColoredBox(
            color: Colors.grey.shade900
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'Eagan Notokusumo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500
                )
              ),
            ),
            Text(
              'Evanston, Illinois',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w200
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 40, right: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.phone, 
                        color: Colors.white, 
                        size: 20
                      ),
                    )
                  ),
                  SizedBox(
                  //width: 250,
                    child: Text(
                      '(331) 304-8434',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 15
                      )
                    )
                  ),
                  ])),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 40, right: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child:
                              Icon(
                                Icons.mail, 
                                color: Colors.white, 
                                size: 18
                              ),
                            )
                          ),
                          Text('b4q5o7@u.northwestern.edu',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 15
                            )
                          ),
                  ])),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Divider(
                      color: Colors.white,
                      height: 60,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 40,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            //await launchUrl('${data[index]['linkedin']}');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 40,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            //await launchUrl('${data[index]['instagram']}');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 40,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            //await launchUrl('${data[index]['twitter']}');
                          },
                        ),
                      ],
                    )
                  )
          ]
        )
      ]               
    );
  }
}

