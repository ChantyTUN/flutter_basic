import 'package:flutter/material.dart';
import 'package:start2/api/source.dart';

class Page8_detail extends StatefulWidget {
  const Page8_detail({super.key, required this.id});
  final int id;

  @override
  State<Page8_detail> createState() => _Page8_detailState();
}

class _Page8_detailState extends State<Page8_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Details"),
      ),
      body: ListView(
        children: [
          Container(
            height: 250.0,
            color: Colors.amber,
            child: Image(
                image: NetworkImage("${myData[widget.id]['img']}"),
                fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${myData[widget.id]['name']}",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("${myData[widget.id]['des']}"),
        ],
      )
    );
  }
}
