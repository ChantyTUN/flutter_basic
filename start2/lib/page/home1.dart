import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
        child: Container(
            height: 150.0,
            color: Colors.lightBlue,
        )
      ),
    );
  }
}
