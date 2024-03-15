import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:start2/api/source.dart';
import 'package:start2/api/city.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';


class Page14 extends StatefulWidget {
  const Page14({super.key});

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  var myData;
  int s=0;
  int e=5;
  var url = "http://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=0&e=16";
  Future<List> getData() async{
    var response = await http.get(Uri.parse(url));
    myData = jsonDecode(response.body);
    // print(myData.length);
    return myData;
  }

  List<City> myCity=[];
  Future<List<City>> getCity() async{
    var url = "http://chey7.com/app/app-1/rean-web-admin/api/get-city-list.php?s=$s&e=$e";
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var myData2 = jsonDecode(response.body);
      for(var myitem in myData2){
        myCity.add(
            City(
                id: int.parse(myitem['id']),
                name: myitem['name'],
                des: myitem['des'],
                img: myitem['img']
            )
        );
      }
    }
    return myCity;
  }

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    setState(() {
      myCity.clear();
      s=0;
    });
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    // items.add((items.length+1).toString());
    if(mounted)
      setState(() {
        s = s + e;
      });
    _refreshController.loadComplete();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pull to refresh"),
      ),
      body: FutureBuilder(
          future: getCity(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return SmartRefresher(
                enablePullDown: true,
                enablePullUp: true,
                controller: _refreshController,
                onLoading: _onLoading,
                onRefresh: _onRefresh,
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int ind) {
                      return Container(
                        color: Colors.blue,
                        margin: EdgeInsets.only(bottom: 10.0),
                        height: 130.0,
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${snapshot.data![ind].id}"),
                            Text("${snapshot.data![ind].name}"),
                          ],
                        ),
                      );
                    }
                ),
              );
            }
            return Center(child: Text("Loading.."),);
          }),
    );
  }
}



