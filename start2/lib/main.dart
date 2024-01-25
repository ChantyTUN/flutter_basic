import 'package:flutter/material.dart';
import 'package:start2/page/category.dart';
import 'package:start2/page/home.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My first Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cambodia first flutter"),
        ),
        body: Home(),
      ),
    )
  );
}


