import 'package:flutter/material.dart';
class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("List View",),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            height: 160.0,
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 250.0,
                    color: Colors.amber,
                    child: Stack(
                      children: [
                        Image(
                          image: NetworkImage("https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-86/65aca18fd1920_1705812360_medium.jpeg",
                          ),
                          fit: BoxFit.cover,
                          width:double.infinity,
                          height:double.infinity,
                        ),
                        Positioned(
                            top: 10.0,
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                  "10% Discount",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.8),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
