import 'package:flutter/material.dart';
import 'package:start2/api/myData.dart';

class Page6_detail extends StatefulWidget {
  const Page6_detail(
      {super.key, required this.id, required this.title, required this.img, required this.des }
      );

  final String title;
  final String img;
  final String des;
  final int id;

  @override
  State<Page6_detail> createState() => _Page6_detailState();
}

class _Page6_detailState extends State<Page6_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${myData[widget.id]['name']}"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              maxRadius: 80,
              backgroundImage: NetworkImage(widget.img),
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              widget.des,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
