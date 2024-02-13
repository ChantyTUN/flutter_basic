import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  var myData = [
    {"name":"Apple","des":"https://www.apple.com","img":"https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201609051049"},
    {"name":"Google","des":"https://www.google.com","img":"https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515358_10512.png"},
    {"name":"Meta","des":"https://www.meta.com","img":"https://logos-world.net/wp-content/uploads/2021/10/Meta-facebook-New-Logo.png"},
    {"name":"Microsoft","des":"https://www.microsoft.com","img":"https://c.s-microsoft.com/en-us/CMSImages/ImgOne.jpg?version=D418E733-821C-244F-37F9-DC865BDEFEC0"},
    {"name":"Amazon","des":"https://www.amazon.com","img":"https://c.s-microsoft.com/en-us/CMSImages/ImgOne.jpg?version=D418E733-821C-244F-37F9-DC865BDEFEC0"},
    {"name":"Tesla","des":"https://www.tesla.com","img":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Tesla_Motors.svg/1200px-Tesla_Motors.svg.png"},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(myData[0]['name']);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext cnt, int i){
            return Container(
              height: 200.0,
              color: Colors.yellow,
              margin: EdgeInsets.only(bottom: 10.0),

              child: Center(
                child: Stack(
                  children: [
                    Image(
                        image: NetworkImage("${myData[i]['img']}"),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                    ),
                    Positioned(
                        child: Container(
                          color: Colors.red,
                          child: Text(
                              "${myData[i]['name']}",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
