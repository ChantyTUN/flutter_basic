import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspsara"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:Column(
        children: [
          Expanded(
              flex: 3,
              child:  Container(
                width: double.infinity,
                color: Colors.yellow,
                child: Text("A"),
              ),
          ),
          Expanded(
            flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                          child: Text("B"),
                        ),
                    ),
                    Expanded(
                      flex: 5,
                        child:  Container(
                          width: double.infinity,
                          color: Colors.red,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text("1"),
                                  color: Colors.white,
                                  height: double.infinity,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text("1"),
                                  color: Colors.red,
                                  height: double.infinity,
                                ),
                              ),

                            ],
                          ),
                        ),
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
