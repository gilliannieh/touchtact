import 'package:flutter/material.dart';

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
                  Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child:
                                Icon(
                                  Icons.phone, 
                                  color: Colors.white, 
                                  size: 15
                                ),
                            )
                          ),
                          SizedBox(
                            //width: 250,
                            child: Text(
                              '(650) 823-1821',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 12
                              )
                            )
                          ),
                  ])),
                  Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child:
                              Icon(Icons.mail, color: Colors.white, size: 15),
                            )
                          ),
                          Text('gilliannieh@gmail.com',
                            style:
                              TextStyle(color: Colors.white, fontSize: 12)
                          ),
                  ])),
                ],
              )),
        ));
  }
}