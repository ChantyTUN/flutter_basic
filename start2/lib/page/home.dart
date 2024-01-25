import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 100.0,
          color: Colors.black,
          child: Center(
            child: Text(
              "Welcome Cambodia",
              style: TextStyle(
                color:  Colors.white,
                fontSize: 20.0,
              ) ,
            ),
          ),
        ),
      ),
    );
  }
}
