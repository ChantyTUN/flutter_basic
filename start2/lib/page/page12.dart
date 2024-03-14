import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:start2/api/source.dart';
class Page12 extends StatefulWidget {
  const Page12({super.key});

  @override
  State<Page12> createState() => _Page12State();
}

class _Page12State extends State<Page12> {
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
                  return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          crossAxisCount: 2
                      ),
                      itemBuilder: (BuildContext context, int i){
                        return(
                            Container(
                              color: Colors.green,
                              child: Image(
                                image: NetworkImage("${snapshot.data![i]['img']}"),
                                fit: BoxFit.cover,
                              ),
                              // style: TextStyle(
                              //   color: Colors.black
                              //   ),
                            )
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
