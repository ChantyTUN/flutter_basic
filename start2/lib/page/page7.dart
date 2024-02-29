import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  var myData;
  var url = "https://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=0&e=16";
  void getData() async{
    var response = await http.get(Uri.parse(url));
    myData = jsonDecode(response.body);
    // print(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View With API"),
      ),
      body: ListView.builder(
          itemCount: myData.length,
          itemBuilder: (BuildContext context, int i){
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.amber,
              height: 120.0,
              child: Center(
                child: Text("Hello"),
              ),
            );
          }
      ),
    );
  }
}
