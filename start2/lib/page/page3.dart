import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var myText =0.0;
  final myVal = TextEditingController();
  final myPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("My text is $myText",
            style: TextStyle(
              color: Colors.red,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    myText=double.parse(myVal.text) * double.parse(myPrice.text);
                  });
                  print(myVal.text);
                },
                child: Text("Click Me"),
            ),
            Text("QTY"),
            TextField(
              controller: myVal,
            ),
            Text("Price"),
            TextField(
              controller: myPrice,
            )


          ],
        ),
      )
    );
  }
}
