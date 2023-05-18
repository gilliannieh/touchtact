import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final userFirst = TextEditingController();
  final userLast = TextEditingController();
  final userPhone = TextEditingController();
  final userEmail = TextEditingController();
  final userCity = TextEditingController();

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150.0, left: 40, right: 40),
        child: Column(children: [
          Text('Gilli Nieh',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500)),
          Text('Evanston, Illinois',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200)),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text('edit your information',
                style: TextStyle(
                    color: Colors.indigoAccent[100],
                    fontSize: 18,
                    fontWeight: FontWeight.w300)),
          ),
          // FIRST NAME
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              controller: userFirst,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                  labelText: 'first name',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
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
                  labelText: 'last name',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
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
                  labelText: 'phone number',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
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
                  labelText: 'email',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
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
                  labelText: 'city, state',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey.shade900,
                    foregroundColor: Colors.indigoAccent.shade100,
                    side: BorderSide(color: Colors.indigoAccent.shade100)),
                onPressed: () {},
                child: const Text('save changes')),
          ),
        ]),
      ),
    );
  }
}
