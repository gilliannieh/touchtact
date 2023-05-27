import 'package:flutter/material.dart';
import 'package:touchtact/pages/signup_2.dart';

class SignupPage1 extends StatefulWidget {
  const SignupPage1({super.key});

  @override
  State<SignupPage1> createState() => _SignupPage1State();
}

class _SignupPage1State extends State<SignupPage1> {
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
          SignupPage1Form()
       ],
      ),
    );
  }
}

class SignupPage1Form extends StatefulWidget {
  const SignupPage1Form({super.key});

  @override
  State<SignupPage1Form> createState() => _SignupPage1FormState();
}

class _SignupPage1FormState extends State<SignupPage1Form> {
  final userFirst = TextEditingController();
  final userLast = TextEditingController();
  final userPhone = TextEditingController();
  final userEmail = TextEditingController();
  final userCity = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userFirst.dispose();
    userLast.dispose();
    userPhone.dispose();
    userEmail.dispose();
    userCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        color: Colors.grey[900],
        child: Column( 
          children: [
            // FIRST NAME
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: TextFormField(
                controller: userFirst,
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
                controller: userLast,
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
                controller: userPhone,
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
                controller: userEmail,
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
                controller: userCity,
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        _navigateToSignup2(context)
                      );
                    }
                  },
                  child: const Text("continue")),
            ),
          ]
        )
      )
    );
  }
  _navigateToSignup2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage2()));
  }
}