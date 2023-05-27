import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Eagan extends StatefulWidget {
  const Eagan({super.key});

  @override
  State<Eagan> createState() => _EaganState();
}

class _EaganState extends State<Eagan> {
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
              return EaganPopup();
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
                  'Eagan Notokusumo',
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
                  'connected 20 min ago',
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

class EaganPopup extends StatefulWidget {
  EaganPopup({super.key});

  @override
  State<EaganPopup> createState() => _EaganPopupState();
}

class _EaganPopupState extends State<EaganPopup> {
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
                  InkWell(
                    onTap: () async {
                      Uri phone = Uri.parse('tel:3313048434');
                      await launchUrl(phone);
                    },
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
                            child: Icon(
                              Icons.mail, 
                              color: Colors.white, 
                              size: 18
                            ),
                          )
                        ),
                        InkWell(
                          onTap: () async {
                            Uri email = Uri.parse('mailto:b4q5o7@u.northwestern.edu');
                            await launchUrl(email);
                          },
                          child: Text(
                            'b4q5o7@u.northwestern.edu',
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
                            Uri linkedin = Uri.parse('https://www.linkedin.com/in/eagan-notokusumo/');
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
                            Uri instagram = Uri.parse('https://www.instagram.com/r.eagan5/');
                            await launchUrl(instagram);
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

