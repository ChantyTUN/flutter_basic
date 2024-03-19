import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  var url = "https://chey7.com/app/app-1/rean-web-admin/api/get-product-list.php";

  Future<List> getProduct() async{
      var myData;
      var resp = await http.get(Uri.parse(url));
      if(resp.statusCode == 200){
        myData = jsonDecode(resp.body);
      }
      return myData;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text("Product List",
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List>(
        future: getProduct(),
        builder: (BuildContext context, AsyncSnapshot<List> snap){
           if(snap.hasData){
             return ListView.builder(
                  padding: EdgeInsets.all(5.0),
                  itemCount: snap.data!.length,
                 itemBuilder: (BuildContext context, int ind){
                    return Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      height: 150.0,
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("AA"),
                          ),
                          Expanded(
                              child: Text("BB"),
                          ),
                        ],
                      )
                    );
                 },
             );
           }
           return Center(
             child: Text("Loading..."),
           );
        },
      ),
    );

  }
}
