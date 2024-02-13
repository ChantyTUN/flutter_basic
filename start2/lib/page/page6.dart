import 'package:flutter/material.dart';
import 'package:start2/page/Page6_detail.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  var myData = [
    {"name":"Apple","des":"https://www.apple.com","img":"https://images.khmer24.co/profiles/pictures/23-03-23/p-87881427_1679550231_d0.jpg"},
    {"name":"Google","des":"https://www.google.com","img":"https://i.ytimg.com/vi/ZGWyB0BILg4/maxresdefault.jpg"},
    {"name":"Meta","des":"https://www.meta.com","img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtIZwUJE0WW4sB7kGzTkLz1UZ1h6PizErvUBLUu-8NMA&s"},
    {"name":"Microsoft","des":"https://www.microsoft.com","img":"https://c.s-microsoft.com/en-us/CMSImages/ImgOne.jpg?version=D418E733-821C-244F-37F9-DC865BDEFEC0"},
    {"name":"Amazon","des":"https://www.amazon.com","img":"https://c.s-microsoft.com/en-us/CMSImages/ImgOne.jpg?version=D418E733-821C-244F-37F9-DC865BDEFEC0"},
    {"name":"Tesla","des":"https://www.tesla.com","img":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Tesla_Motors.svg/1200px-Tesla_Motors.svg.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
      itemCount: myData.length,
        itemBuilder: (BuildContext cnt,int i){
        return ListTile(
          leading: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              maxRadius: 36.0,
              backgroundImage: NetworkImage("${myData[i]['img']}"),
            ),
          ),
          title: Text("${myData[i]['name']}"),
          subtitle: Text("${myData[i]['des']}"),
          trailing: Icon(Icons.arrow_back_ios_new_outlined),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext) => Page6_detail(),
                ),
            );
          },
        );
        },
      ),
    );
  }
}
