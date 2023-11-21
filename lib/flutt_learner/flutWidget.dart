import 'package:flutter/material.dart';

class flutwid extends StatelessWidget {
  const flutwid
({super.key});

  @override
  Widget build(BuildContext context) {
     final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        elevation: 10.0,
        );
    return Scaffold(
    
      appBar: AppBar(
        title: Text("Basics",
         style: TextStyle(color: Colors.black87),),
         backgroundColor: Colors.deepOrangeAccent,
         shadowColor: Colors.cyanAccent,
      ),
      drawer: Drawer(
        elevation: 16.0,
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader
            (
              decoration: BoxDecoration(color: Colors.black12),
              accountName: Text("Darwin",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
            ),),
             accountEmail: Text("@gmail.com",
             style: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 22),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('HI',
              style: TextStyle(color: Colors.black87),),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text("data",
                style: TextStyle(color: Colors.black87),),
              )
            ],
            ),
            ListTile(
              title: Text("ALL Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Sent Items"),
              leading: Icon(Icons.send),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Local-Offers"),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
          ],
        ),

      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          style: style,
           onPressed: () {
             // Do something when the button is pressed
             print("object hey ");
           },
           child: Text('Click me'),
         )
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        fixedColor: Color.fromARGB(255, 42, 110, 59),
        items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home)),
                BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search)),
                BottomNavigationBarItem(
          label: "Subscriptions",
          icon: Icon(Icons.subscriptions))
      
      ],
      onTap:(int index){
        print(index.toString());
      } ,
      ),
    );
  }
}