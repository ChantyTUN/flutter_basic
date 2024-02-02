import 'package:flutter/material.dart';
import 'package:start2/page/category.dart';
import 'package:start2/page/home.dart';
import 'package:start2/page/page1.dart';
import 'package:start2/page/page11.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cambodia first flutter"),
        ),
        body: Page11(),
      ),
    )
  );
}


