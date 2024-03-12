import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_html_v3/flutter_html.dart';
import 'package:http/http.dart' as http;
import 'package:start2/page/page8_detail.dart';
import 'package:start2/api/source.dart';


class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
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
        title: Text("Griud"),
        backgroundColor: Colors.blueAccent,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: numData,
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
                      image: NetworkImage("${myData[i]['img']}"),
                      fit: BoxFit.cover,
                    ),
                    // style: TextStyle(
                    //   color: Colors.black
                    //   ),
                  )
                );
            }
        ),
      ),
    );
  }
}
