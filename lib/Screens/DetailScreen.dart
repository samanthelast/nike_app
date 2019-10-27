import 'package:flutter/material.dart';

import '../CustomIcon.dart';
import '../ProductCard.dart';

class DetailScreen extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  // receive data from the mainScreen as a parameter
  DetailScreen(
      {Key key,
      @required this.cardColor,
      @required this.imgUrl,
      @required this.title,
      @required this.previousPrice,
      @required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(cardColor),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Details"),
      ),
      body: Scaffold(
          backgroundColor: Color(cardColor),
          body: new SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: new Column(
                children: <Widget>[
                  ProductDetail(),
                ],
              ),
            ),
          )),
    );
  }

  Widget ProductDetail() {
    return Container(
        width: double.infinity,
        height: 640.0,
        decoration: BoxDecoration(
            // color: Color(cardColor),
            ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            Image.asset(imgUrl, width: 281.0, height: 191.0),
            Text(title,
                style: TextStyle(fontSize: 25.0, fontFamily: "Raleway")),
            Padding(
              padding: EdgeInsets.only(top: 40,bottom: 40,left: 30,right: 30),
              child: Text("You like this product?\nOrder now with free shipping!",
                style: TextStyle(fontSize: 25.0, fontFamily: "Helvetica"),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  Column(
                    children: <Widget>[
                      Text(previousPrice,
                          style: TextStyle(
                              color: Color(0xFFfeb0ba),
                              fontSize: 16.0,
                              fontFamily: "Helvetica")),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(price,
                          style: TextStyle(
                              fontSize: 28.0, fontFamily: "Helvetica")),
                    ],
                  ),
                  IconButton(
                    icon: Icon(CustomIcons.cart,size: 45,),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ));
  }
}
