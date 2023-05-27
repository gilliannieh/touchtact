import 'package:flutter/material.dart';
import 'package:touchtact/pages/profile_home.dart';

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
          child: Row(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                'GILLI NIEH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
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
                        child: Icon(
                          Icons.phone, 
                          color: Colors.white, 
                          size: 15
                        ),
                      )
                    ),
                    Text(
                      '(650) 823-1821',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 12
                      )
                    )
                  ]
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.mail, 
                          color: Colors.white, 
                          size: 15
                        ),
                      )
                    ),
                    Text(
                      'gilliannieh@gmail.com',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 12
                      )
                    )
                  ]
                )
              ),
            ]),  
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.grey.shade900,
                          size: 15
                        ),
                        color: Colors.white,
                        onPressed: () {
                          // NAVIGATE TO PROFILE PAGE
                          _navigateToProfile(context);
                        },
                      ),
                    ),
                  ),
                ]
              ),
            )
          ]),
        ),
      )
    );
  }
  void _navigateToProfile(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardToProfilePage()));
  }
}