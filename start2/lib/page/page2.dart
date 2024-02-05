import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
            "ប្រទេសកម្ពុជា",
        style: TextStyle(
          fontFamily: "Koulen",
          color: Colors.white
        ),
        ),
        actions: [
          Icon(
              Icons.notification_add_rounded,
              color: Colors.yellow,
              size: 30.0,
          ),
          SizedBox(
            width: 8.0,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Image(
                    image: AssetImage("images/1.jpg"),
                    fit: BoxFit.cover,
                ),
              )
          ),
          Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          alignment: Alignment.center,

                          child: Text(
                            "ប្រទេសខ្មែរ គឺជាប្រទេសមួយស្ថិតនៅផ្នែកខាងត្បូងនៃឧបទ្វីបឥណ្ឌូចិន ក្នុងអនុតំបន់អាស៊ីអាគ្នេយ៍។",
                            style: TextStyle(
                              fontFamily: "Battambang",
                              color: Colors.white,
                            ),),
                        ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(9.0),
                          ),

                          child: Row(
                            children: [
                              Expanded(
                                 child:  Icon(
                                   Icons.pending_actions,
                                   color: Colors.white,
                                   size: 30.0,
                                 ),
                             ),
                              Expanded(
                                  child:  Icon(
                                    Icons.pending_actions,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                              ),
                              Expanded(
                                  child:  Icon(
                                    Icons.pending_actions,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                              ),
                              Expanded(
                                child:  Icon(
                                  Icons.pending_actions,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Expanded(
                                child:  Icon(
                                  Icons.pending_actions,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.deepOrange,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text("ដោយមានប្រជាជន​ជាង ១៦ លាននាក់ កម្ពុជាស្ថិតក្នុងលំដាប់ទី៧២​ក្នុង​​លោក ទី២៧ក្នុងទ្វីបអាស៊ី និងទី៧ក្នុងអាស៊ីអាគ្នេយ៍។",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0
                                      ),
                                    ),

                                  ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text("ABC cambodia",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),),

                                  )
                              ),
                            ],
                          ),
                        ),
                    ),
                  ],
                ),

              )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.brown,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_call),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm_sharp),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Call",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text("ABC"),
            ),
            ListTile(
              title: Text("Home Page"),
              subtitle: Text("Sub Home Page"),
              leading: Icon(Icons.home_filled),
              trailing: Icon(Icons.arrow_circle_down),
              onTap: (){
                print("Hello");
              },
            ),
            ListTile(
              title: Text("Service"),
              subtitle: Text("Sub Service"),
              leading: Icon(Icons.security_rounded),
              trailing: Icon(Icons.arrow_circle_down),
              onTap: (){
                print("Hello");
              },
            ),
            ListTile(
              title: Text("Conditonals"),
              subtitle: Text("Sub Conditionals"),
              leading: Icon(Icons.lock_clock_outlined),
              trailing: Icon(Icons.arrow_circle_down),
              onTap: (){
                print("Hello");
              },
            ),
            ListTile(
              title: Text("About Us"),
              subtitle: Text("Sub About us"),
              leading: Icon(Icons.account_box_outlined),
              trailing: Icon(Icons.arrow_circle_down),
              onTap: (){
                print("Hello");
              },
            ),
          ],

        ),
      ),
    );
  }
}
