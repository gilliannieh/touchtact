import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';

class ConnectionPopup extends StatefulWidget {
  const ConnectionPopup({super.key});

  @override
  State<ConnectionPopup> createState() => _ConnectionPopupState();
}

class _ConnectionPopupState extends State<ConnectionPopup> {
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
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]
        )
      ]               
    );
  }
}

