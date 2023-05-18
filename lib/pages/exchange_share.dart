import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 70, left: 40),
              child: BackButton(
                color: Colors.white,
              ),
            ), 
          ),
          Padding(
            padding: EdgeInsets.only(top: 180),
            child: Column(
            children: [
              Text(
                'share',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 55, right: 55),
                child: Text(
                  "hold your phone near your new friend's to share your profile!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            ),
          ),
        ],
      ),
    );
  }
}