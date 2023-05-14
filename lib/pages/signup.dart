import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
              color: Colors.grey[900]
          ),
        ),
        Padding(
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
              // LAST NAME
              // PHONE NUMBER
              // EMAIL
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, 
                        color: Colors.white
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, 
                        color: Colors.indigoAccent.shade100
                      ),
                    ),
                    labelText: 'email',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )
                  ),
                ),
              ),
              // CITY & STATE
            ],),
        )
      ],
    );
  }
}