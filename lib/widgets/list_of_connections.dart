import 'package:flutter/material.dart';
import 'package:touchtact/data/connections_data.dart';
import 'package:touchtact/widgets/connection_popup.dart';

// LIST OF CONNECTIONS CLASS
class ListOfConnections extends StatelessWidget {
  final data = ConnectionsData.connectionData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 50),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                '${data[index]['name']}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              subtitle: Text(
                'connected ${data[index]['time']} ago',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300
                )
              ),
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return ConnectionPopup();
                  },
                );
              }
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Divider(
                color: Colors.white,
                height: 10,
                thickness: 1,
              ),
            )
          ]
        );
      }
    );
  }
}