import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 220.0,
            color: Colors.yellow,
            child: Image(
                image: AssetImage(
                    "images/1.jpg"
                ),
              fit: BoxFit.cover,
            ),
          )
        ],
      )
    );
  }
}
