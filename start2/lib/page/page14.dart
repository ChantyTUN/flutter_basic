import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:start2/api/source.dart';

class Page14 extends StatefulWidget {
  const Page14({super.key});

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  var myData;
  var url = "http://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=0&e=16";
  Future<List> getData() async{
    var response = await http.get(Uri.parse(url));
    myData = jsonDecode(response.body);
    // print(myData.length);
    return myData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pull to refresh"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int ind){
                  return Container(
                    height: 130.0,
                    // color: Colors.blue,
                    child: Center(
                      child: Text("${snapshot.data![ind]['name']}"),
                    ),
                  );
                }
            );
          }
          return Text("Loading");
        },
      ),
    );
  }
}
