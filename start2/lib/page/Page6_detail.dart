import 'package:flutter/material.dart';

class Page6_detail extends StatefulWidget {
  const Page6_detail({super.key});

  @override
  State<Page6_detail> createState() => _Page6_detailState();
}

class _Page6_detailState extends State<Page6_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Detail"),
      ),
      body: Center(
        child: Text("Data"),
      ),
    );
  }
}
