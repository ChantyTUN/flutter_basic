import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My first Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("first flutter"),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 100.0,
            color: Colors.black,
            child: Center(
                child: Text(
                    "Welcome",
                  style: TextStyle(
                    color:  Colors.white,
                    fontSize: 20.0,
                  ) ,
                ),
            ),
          ),
        ),
      )
    )
  );
}