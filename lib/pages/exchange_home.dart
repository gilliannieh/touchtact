import 'package:flutter/material.dart';
import 'package:touchtact/pages/exchange_collect.dart';
import 'package:touchtact/pages/exchange_share.dart';

// PAGE CLASS
class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 150, left: 40, right: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'exchange',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'select an option to build your network',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            // SHARE PROFILE BUTTON
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton.icon(
                  icon: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_outward,
                      size: 25.0
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade800),
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  ),
                  onPressed: () {
                    // NAVIGATE TO SHARE PAGE
                    _navigateToShare(context);
                  },
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'share profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
                ),
              ),
            ),
            // COLLECT BUTTON
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton.icon(
                  icon: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add,
                      size: 25.0
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade800),
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  ),
                  onPressed: () {
                    // NAVIGATE TO COLLECT PAGE
                    _navigateToCollect(context);
                  },
                  label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'collect profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _navigateToCollect(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollectPage()));
  }
  void _navigateToShare(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SharePage()));
  }
}

