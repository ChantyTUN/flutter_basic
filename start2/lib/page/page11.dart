import 'package:flutter/material.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("TV Online",
        style: TextStyle(
          color: Colors.white
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child:  Container(
                width: double.infinity,
                color: Colors.black,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image(
                          image: AssetImage("images/3.png"),
                          fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Chanty Lifestyle",
                                style: TextStyle(
                                  color: Colors.white38,
                                ),
                            ),
                            Text(
                                "Kindom of wonder",
                              style: TextStyle(
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child:  Container(
              padding: EdgeInsets.all(5.0),
              color: Colors.black,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white30,
                        ),

                        child: Text("Cambodia is a Southeast Asian nation whose landscape spans low-lying plains, the Mekong Delta, mountains and Gulf of Thailand coastline. Phnom Penh, its capital",
                          style: TextStyle(color: Colors.white),
                          ),
                      ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: double.infinity,
                                  // color: Colors.red,
                                  child: Image(
                                      image: AssetImage("images/2.png"
                                      ),
                                      fit: BoxFit.cover,
                                  ),
                                ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  alignment: Alignment.center,
                                  height: double.infinity,
                                  color: Colors.black,
                                  child: Text("Cambodia is a Southeast Asian nation whose landscape spans low-lying plains, the Mekong Delta, mountains and Gulf of Thailand coastline. Phnom Penh, its capital",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                            ),
                        
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),

          ),


        ],
      ),
    );
  }
}
