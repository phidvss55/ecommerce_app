import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Import files
import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/products.dart';

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
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotColor: Colors.red,
      )
    );
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

      body: new ListView(
        children: <Widget>[
          image_carousel,
          // Padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0), 
            child: new Text('Categories')
          ),
          // Horizontal list view begins here
          HorizontalList(),

          // padding widget
          new Padding(
            padding: const EdgeInsets.all(20.0), 
            child: new Text('Recent products')
          ),

          Container(
            height: 320,
            child: Products(),
          )

        ]
      ),
    );
  }
}