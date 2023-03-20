import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    // 打 API
    Response res =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    // decode JSON
    Map data = jsonDecode(res.body);
    print(data['id']);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Text('loading'),
    );
  }
}
