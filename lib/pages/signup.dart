import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150.0, left: 40, right: 40),
      child: Column(
        children: [
          Text(
            'welcome.',
            style: TextStyle(
              color: Colors.indigoAccent[100],
              fontSize: 50,
              fontWeight: FontWeight.w600
            )
          ),
          Text(
            'first things first, a little about you.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w200
            )
          ),
          // FIRST NAME
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('first name'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // LAST NAME
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('last name'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // PHONE NUMBER
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('phone number'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // EMAIL
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('email'),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )
              ),
            ),
          ),
          // CITY & STATE
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                label: Text('city, state'),
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
                child: const Text("let's go")),
          ),
        ],
      ),
    );
  }
}