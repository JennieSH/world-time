import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init func ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build func ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        elevation: 0,
      ),
      body: ElevatedButton(
        child: Text('counter: $counter'),
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
      ),
    );
  }
}
