import 'package:flutter/material.dart';

// PAGE
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ProfileForm()
    );
  }
}

// FORM
class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
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
        padding: const EdgeInsets.only(top: 150.0, left: 40, right: 40),
        child: Column(children: [
          BackButton(),
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
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your first name';
                }
                return null;
              },
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
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your first name';
                }
                return null;
              },
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
                  )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your first name';
                }
                return null;
              },
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
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your first name';
                }
                return null;
              },
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
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your first name';
                }
                return null;
              },
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
                      SnackBar(content: 
                        Text('processing...')
                      )
                    );
                  }
                },
                child: const Text('save changes')),
          ),
        ]),
      ),
    );
  }
}
