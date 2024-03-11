import 'package:flutter/material.dart';
import 'package:start2/api/source.dart';
import 'package:flutter_html_v3/custom_render.dart';
import 'package:flutter_html_v3/flutter_html.dart';
import 'package:flutter_html_v3/html_parser.dart';
import 'package:flutter_html_v3/style.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${myData[widget.id]['des']}"),
          ),
          Html(
              data: myData[widget.id]['des'],
              style: {
                'body': Style(
                  // margin: EdgeInsets.all(2.0),
                  padding: EdgeInsets.all(7.0),
                  fontSize: FontSize.large,
                )
              },
          ),
        ],
      )
    );
  }
}
