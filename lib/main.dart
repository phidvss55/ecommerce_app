import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Add carousel

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Center(
          child: Text('Routine')
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: (){},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: (){},
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Santos Example'), 
              accountEmail: Text('phidv@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white)
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.person),
                title: Text('My Account'),
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.shopping_basket),
                title: Text('My Orders'),
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.category),
                title: Text('Categories'),
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
              ),
            ),
            Divider(),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text('Settings'),
              ),
            ),
            InkWell (
              onTap: () {},
              child: ListTile (
                leading: Icon(Icons.help, color: Colors.blue),
                title: Text('About'),
              ),
            ),
          ],
        )
      ),
    );
  }
}