import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});

  var listPosts = [
    {
      'title': 'chantysdaswerqw  ssdf asdcs dfdsfsd fwesfe wes fsd zf',
      'created_at': '20 May 2024',
      'image_url': 'https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg',
      'name': 'khmer',
      'ago': '5 minutes',
    },
    {
      'title': 'chanty1',
      'created_at': '21 May 2024',
      'image_url': 'https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg',
      'name': 'khmer1',
      'ago': '3 minutes',
    },
    {
      'title': 'chanty2',
      'created_at': '22 May 2024',
      'image_url': 'https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg',
      'name': 'khmer2',
      'ago': '1 minutes',
    },
    {
      'title': 'chanty3',
      'created_at': '23 May 2024',
      'image_url': 'https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg',
      'name': 'khmer3',
      'ago': '30years',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: listPosts.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                        NetworkImage(listPosts[index]['image_url']!),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(listPosts[index]['name']!),
                            Text(listPosts[index]['ago']!,
                              style: TextStyle(
                                color: Colors.grey, fontSize: 9,
                              ),),
                          ],
                        ),
                      ),
                      // add option deleted
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            // add bottomsheet
                            showModalBottomSheet(
                                context: context,
                                builder: (context){
                                  return Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        ListTile(
                                          onTap: () {},
                                          leading: Icon(Icons.edit),
                                          title: Text("Edit"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.delete),
                                          title: Text("Delete"),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          icon: Icon(Icons.more_horiz)
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(listPosts[index]['title']!),
                        SizedBox(
                          height: 20,
                        ),
                        Image.network(listPosts[index]['image_url']!),
                        Text(listPosts[index]['created_at']!),
                      ],
                    ),
                    // option deleted

                  ),

                  // add count like comment
                  Row(
                    children: [
                      Text("10 likes"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("20 comments"),
                    ],
                  ),

                  Divider(
                    height: 2,
                  ),
                  // add button lik and comment
                  Row(
                    children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
      )
    );
  }
}
