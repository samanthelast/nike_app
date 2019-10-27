import 'package:flutter/material.dart';
import 'package:nike_app/Screens/DetailScreen.dart';
import 'CustomIcon.dart';

class ProductCard extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  ProductCard(
      this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);
  int getcardColor(){return cardColor;}
  String getimgUrl(){return imgUrl;}
  String getTitle(){return title;}
  String getpreviousPrice(){return previousPrice;}
  String getprice(){return price;}

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {_RouteToDetailScreen(context, cardColor, imgUrl, title,
                          previousPrice, price);},
      child: Container(
        width: double.infinity,
        height: 320.0,
        decoration: BoxDecoration(
            color: Color(cardColor),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            Image.asset(imgUrl, width: 281.0, height: 191.0),
            Text(title,
                style: TextStyle(fontSize: 25.0, fontFamily: "Raleway")),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(CustomIcons.favorite),
                    onPressed: () {
                      
                    },
                  ),
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
                    icon: Icon(CustomIcons.cart),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _RouteToDetailScreen(BuildContext context, int cardColor, String imgUrl,
      String title, String previousPrice, String price) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            cardColor: cardColor,
            imgUrl:imgUrl,
            title:title,
            previousPrice:previousPrice,
            price:price,
          ),
        ));
  }
}
