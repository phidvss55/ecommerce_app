import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_Location: 'images/cats/tshirt.png',
            image_Caption: 'shirt',
          ),
          Category(
            image_Location: 'images/cats/dress.png',
            image_Caption: 'dress'
          ),
          Category(
            image_Location: 'images/cats/accessories.png',
            image_Caption: 'accessories'
          ),
          Category(
            image_Location: 'images/cats/formal.png',
            image_Caption: 'formal'
          ),
          Category(
            image_Location: 'images/cats/informal.png',
            image_Caption: 'informal'
          ),
          Category(
            image_Location: 'images/cats/jeans.png',
            image_Caption: 'jeans'
          ),
          Category(
            image_Location: 'images/cats/shoe.png',
            image_Caption: 'jeans'
          ),
        ]
      )
    );
  }
}

class Category extends StatelessWidget {
  final String image_Location;
  final String image_Caption;

  Category({
    this.image_Location,
    this.image_Caption,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_Location, width: 100.0, height: 80.0),
            subtitle: Container(
              color: Colors.black,
              alignment: Alignment.topCenter,
              child: Text(image_Caption, style: new TextStyle(fontSize: 12.0))
            ),
          )
        ),
      )
    );
  }
}