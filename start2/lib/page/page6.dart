import 'package:flutter/material.dart';
import 'package:start2/page/Page6_detail.dart';
import 'package:start2/api/myData.dart';
class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {

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
                    builder: (BuildContext) => Page6_detail(id:i,title: "${myData[i]['name']}",img: "${myData[i]['img']}", des: "${myData[i]['des']}",),
                ),
            );
          },
        );
        },
      ),
    );
  }
}
