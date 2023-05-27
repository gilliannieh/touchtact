import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Alexis extends StatefulWidget {
  const Alexis({super.key});

  @override
  State<Alexis> createState() => _AlexisState();
}

class _AlexisState extends State<Alexis> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[900],
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            context: context, 
            builder: (BuildContext context) {
              return AlexisPopup();
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Alexis Robles',
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'connected 2 hr ago',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),
              ),
            ],
          ),
          
        ),
      )
    );
  }
}

class AlexisPopup extends StatefulWidget {
  AlexisPopup({super.key});

  @override
  State<AlexisPopup> createState() => _AlexisPopupState();
}

class _AlexisPopupState extends State<AlexisPopup> {
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
                'Alexis Robles',
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
                  InkWell(
                    onTap: () async {
                      Uri phone = Uri.parse('tel:7816669422');
                      await launchUrl(phone);
                    },
                    child: Text(
                      '(781) 666-9422',
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
                            child: Icon(
                              Icons.mail, 
                              color: Colors.white, 
                              size: 18
                            ),
                          )
                        ),
                        InkWell(
                          onTap: () async {
                            Uri email = Uri.parse('mailto:alexis.robles49@gmail.com');
                            await launchUrl(email);
                          },
                          child: Text(
                            'alexis.robles49@gmail.com',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 15
                            ),
                          ),
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
                            FontAwesomeIcons.linkedin,
                            size: 30,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            Uri linkedin = Uri.parse('https://www.linkedin.com/in/alexisdrobles/');
                            await launchUrl(linkedin);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                          ),
                          color: Colors.white,
                          onPressed: () async {
                            
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

