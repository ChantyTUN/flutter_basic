import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:start2/page/page8_detail.dart';
import 'package:start2/api/source.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  var numData=0;
  var url = "http://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=0&e=16";
  void getDate() async {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200){
        myData = jsonDecode(response.body);
        numData = myData.length;
       // print(response.body);
      }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDate();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View With JSONS"),
      ),
      body: numData > 0 ? ListView.builder(
          itemCount: numData,
          itemBuilder: (BuildContext context, int i){
            return InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page8_detail(id:i),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                color: Colors.green,
                height: 120.0,
                child: Center(
                  child: Text("${myData[i]['name']}"),
                ),
              ),
            );
          },
          ): Center(
        child: Text("Loading...."),
      ),
    );
  }
}
