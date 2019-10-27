import 'package:flutter/material.dart';
import 'package:nike_app/ProductCard.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen();
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                child:
                    Image.asset("assets/logo.png", width: 62.0, height: 43.0),
              ),
            ),
            ProductCard(0xFFff9800, "assets/shoes_01.png", "Gray Sneakers",
                "\$200.00", "\$190"),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFF03a9f4, "assets/shoes_02.png", "Nike Bob",
                "\$150.00", "\$139"),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFFfe23a1, "assets/shoes_03.png", "Green Running Sheos",
                "\$100.00", "\$95"),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFFfa3c4b, "assets/shoes_04.png", "Hybrid Rocket WNS",
                "\$300.00", "\$278"),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFFf2ec3b, "assets/shoes_05.png", "Nike White Sneakers",
                "\$150.00", "\$135"),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFFfb2cdb, "assets/shoes_06.png", "Nike Black Sneakers",
                "\$140.00", "\$120"),
           
          ],
        ),
      ),
    );
  }
}
