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
  // Future<List> getProduct() async{
  //   var resp = await http.get(Uri.parse(url));
  //   if(resp.statusCode == 200){
  //     var myData = jsonDecode(resp.body);
  //   }
  // }

  void getData() async{
      var resp = await http.get(Uri.parse(url));
      if(resp.statusCode == 200){
        var myData = jsonDecode(resp.body);
        print(myData);
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
      body: Center(
        child: Text("ABC"),
      ),
    );

  }
}
