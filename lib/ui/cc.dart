import 'package:flutter/material.dart';

void home() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Homepage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Group8"),
              accountEmail: Text("Group8@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "G",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.food_bank), title: Text("Food"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shop), title: Text("Shops"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.motorcycle_rounded), title: Text("Package Delivery"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        persistentFooterButtons: const [
          Icon(Icons.settings),
          SizedBox(width: 5),
          Icon(Icons.exit_to_app),
          SizedBox(width: 10,),
        ],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'LiveChat',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.receipt),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () => {},
      ),
    );
  }
}