import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:start2/api/source.dart';
class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
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
        title: Text("Flutter Builder wiht JSON"),
      ),
      body: Container(
          child: FutureBuilder<List>(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int ind){
                      return Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        alignment: Alignment.center,
                        height: 150.0,
                        color: Colors.red,
                        child: Text(
                          snapshot.data![ind]['name'],
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white
                          ),
                        ),
                      );
                    }
                );
              }
              return Center(
                child: CircularProgressIndicator(

                ),
              );
            }
          )
      ),
    );
  }
}
