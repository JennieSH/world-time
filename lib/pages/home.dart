import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // get route data
    data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                // 前往 /location 頁面
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(
                Icons.edit_location,
                color: Colors.grey[900],
              ),
              label: Text(
                'Edit location',
                style: TextStyle(color: Colors.grey[900]),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66.0,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
