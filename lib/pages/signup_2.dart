import 'package:flutter/material.dart';

class SignupPage2 extends StatefulWidget {
  const SignupPage2({super.key});

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0, left: 40, right: 40),
      child: Column(
        children: [
          Text(
            'nice to meet you,',
            style: TextStyle(
              color: Colors.indigoAccent[100],
              fontSize: 30,
              fontWeight: FontWeight.w600
            )
          ),
          Text(
            'Gilli.',
            style: TextStyle(
              color: Colors.indigoAccent[100],
              fontSize: 50,
              fontWeight: FontWeight.w600
            )
          ),
          Text(
            'give us your socials!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w200
            )
          ),
          // LINKEDIN
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('linkedin'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // INSTAGRAM
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('instagram'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // TWITTER 
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('twitter'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // FACEBOOK
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('facebook'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey.shade900,
                    foregroundColor: Colors.indigoAccent.shade100,
                    side: BorderSide(color: Colors.indigoAccent.shade100)),
                onPressed: () {},
                child: const Text("continue")),
          ),
        ],
      ),
    );
  }
}