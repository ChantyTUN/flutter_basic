import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  void _onRefresh() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length+1).toString());
    if(mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pull to Refresh"),
        backgroundColor: Colors.blue,
      ),
      body: SmartRefresher(
          controller: _refreshController,
        onLoading: _onLoading,
        onRefresh: _onRefresh,
        child: ListView.builder(
          itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
          itemExtent: 100.0,
          itemCount: items.length,
        ),
      ),
    );
  }
}
